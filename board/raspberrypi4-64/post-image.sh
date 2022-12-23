#!/bin/bash

set -e

BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"
GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

install -D -m 0644 "${BOARD_DIR}/config.txt" "${BINARIES_DIR}/config-common.txt"
install -D -m 0644 "${BOARD_DIR}/fixup4.dat" "${BINARIES_DIR}/fixup4.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4cd.dat" "${BINARIES_DIR}/fixup4cd.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4db.dat" "${BINARIES_DIR}/fixup4db.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4x.dat" "${BINARIES_DIR}/fixup4x.dat"
install -D -m 0644 "${BOARD_DIR}/start4.elf" "${BINARIES_DIR}/start4.elf"
install -D -m 0644 "${BOARD_DIR}/start4cd.elf" "${BINARIES_DIR}/start4cd.elf"
install -D -m 0644 "${BOARD_DIR}/start4db.elf" "${BINARIES_DIR}/start4db.elf"
install -D -m 0644 "${BOARD_DIR}/start4x.elf" "${BINARIES_DIR}/start4x.elf"
install -D -m 0644 "${BOARD_DIR}/cmdline.txt" "${BINARIES_DIR}/cmdline.txt"
install -D -m 0755 "${BOARD_DIR}/rauc-hooks.sh" "${BINARIES_DIR}/rauc-hooks.sh"

if [[ "${CBPIFW_DEV_BUILD}" == "true" ]]; then
	export RAUC_SIGNING_KEY_PATH="${BINARIES_DIR}/cbpifw-dev.key.pem"
	export RAUC_SIGNING_CERT_PATH="${BINARIES_DIR}/cbpifw-dev.cert.pem"
else 
	export RAUC_SIGNING_KEY_PATH="TBD"
	export RAUC_SIGNING_CERT_PATH="${BINARIES_DIR}/cbpifw-update.pem"
fi

RAUC_MANIFEST=$(cat <<EOM
[update]
compatible=cbpifw-${BOARD_NAME}
version=${GITHUB_SHA:-snapshot}
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
	--config "${BOARD_DIR}/genimage.cfg"

exit $?
