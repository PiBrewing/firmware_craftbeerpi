#!/bin/bash

#!/bin/bash

set -e

BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"
GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

install -D -m 0644 "${BOARD_DIR}/config.txt" "${BINARIES_DIR}/config.txt"
install -D -m 0644 "${BOARD_DIR}/fixup4.dat" "${BINARIES_DIR}/fixup4.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4cd.dat" "${BINARIES_DIR}/fixup4cd.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4db.dat" "${BINARIES_DIR}/fixup4db.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4x.dat" "${BINARIES_DIR}/fixup4x.dat"
install -D -m 0644 "${BOARD_DIR}/start4.elf" "${BINARIES_DIR}/start4.elf"
install -D -m 0644 "${BOARD_DIR}/start4cd.elf" "${BINARIES_DIR}/start4cd.elf"
install -D -m 0644 "${BOARD_DIR}/start4db.elf" "${BINARIES_DIR}/start4db.elf"
install -D -m 0644 "${BOARD_DIR}/start4x.elf" "${BINARIES_DIR}/start4x.elf"

# Pass an empty rootpath. genimage makes a full copy of the given rootpath to
# ${GENIMAGE_TMP}/root so passing TARGET_DIR would be a waste of time and disk
# space. We don't rely on genimage to build the rootfs image, just to insert a
# pre-built one in the disk image.

trap 'rm -rf "${ROOTPATH_TMP}"' EXIT
ROOTPATH_TMP="$(mktemp -d)"

rm -rf "${GENIMAGE_TMP}"

genimage \
    --rootpath "${ROOTPATH_TMP}"   \
    --tmppath "${GENIMAGE_TMP}"    \
    --inputpath "${BINARIES_DIR}"  \
    --outputpath "${BINARIES_DIR}" \
    --config "${GENIMAGE_CFG}"

exit $?
