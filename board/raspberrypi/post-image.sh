#!/bin/bash

set -e

export BOARD_DIR="$(dirname $0)"
export BOARD_NAME="$(basename ${BOARD_DIR})"
GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

install -D -m 0644 "${BOARD_DIR}/config.txt" "${BINARIES_DIR}/config-common.txt"
install -D -m 0644 "${BOARD_DIR}/cmdline.txt" "${BINARIES_DIR}/cmdline.txt"
install -D -m 0755 "${BOARD_DIR}/rauc-hooks-${BOARD_NAME}.sh" "${BINARIES_DIR}/rauc-hooks.sh"

if [[ -f ${BOARD_DIR}/post-image-${BOARD_NAME}.sh ]]; then
	echo "Executing board specific post image script for board ${BOARD_NAME}"
	${BOARD_DIR}/post-image-${BOARD_NAME}.sh
fi

if [[ "${CBPIFW_DEV_BUILD}" == "true" ]]; then
	echo "Using dev keys for image signing"
	export RAUC_SIGNING_KEY_PATH="${BINARIES_DIR}/cbpifw-dev.key.pem"
	export RAUC_SIGNING_CERT_PATH="${BINARIES_DIR}/cbpifw-dev.cert.pem"
else 
	echo "Using release keys for image signing"
	export RAUC_SIGNING_KEY_PATH="${BINARIES_DIR}/cbpifw-signing.key"
	export RAUC_SIGNING_CERT_PATH="${BINARIES_DIR}/cbpifw-signing.pem"
fi

SIGNING_KEY_HASH=$(openssl pkey -in ${RAUC_SIGNING_KEY_PATH} -pubout | openssl md5)
SIGNING_CERT_HASH=$(openssl x509 -in ${RAUC_SIGNING_CERT_PATH} -pubkey -noout | openssl md5)

if [[ "$SIGNING_KEY_HASH" != "$SIGNING_CERT_HASH" ]]; then
	echo "Certificate (${SIGNING_CERT_HASH}) and key (${SIGNING_KEY_HASH}) do not belong together and won't be able to sign the update bundle"
	exit 10
fi

rm -rf "${BINARIES_DIR}/image0"
mkdir -p "${BINARIES_DIR}/image0"
cp -r -t "${BINARIES_DIR}/image0" "${BINARIES_DIR}/rpi-firmware/overlays"
echo -e "root=/dev/mmcblk0p2 $(<${BINARIES_DIR}/cmdline.txt)" > "${BINARIES_DIR}/image0/cmdline.txt"
echo -e "os_prefix=image0/\n$(<${BINARIES_DIR}/config-common.txt)" > "${BINARIES_DIR}/config.txt"

VERSION=${IMAGE_VERSION:-snapshot}
RAUC_MANIFEST=$(cat <<EOM
[update]
compatible=cbpifw-${BOARD_NAME}
version=${VERSION}
build=${GITHUB_SHA:-snapshot}
[bundle]
format=verity
[hooks]
filename=hook
[image.rootfs]
filename=rootfs.img
hooks=post-install
EOM
)
export RAUC_MANIFEST

GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"
rm -rf "${GENIMAGE_TMP}"
genimage                           \
	--rootpath "${TARGET_DIR}"     \
	--tmppath "${GENIMAGE_TMP}"    \
	--inputpath "${BINARIES_DIR}"  \
	--outputpath "${BINARIES_DIR}" \
	--config "${BOARD_DIR}/genimage-${BOARD_NAME}.cfg"

exit $?
