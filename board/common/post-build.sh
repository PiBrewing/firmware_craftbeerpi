#!/bin/sh

set -u
set -e

mkdir -p ${TARGET_DIR}/boot

rm -rf ${TARGET_DIR}/usr/share/factory/var
cp -dpfr ${TARGET_DIR}/var ${TARGET_DIR}/usr/share/factory/

cat << EOF > ${TARGET_DIR}/etc/os-release
NAME=cbpi-firmware
ID=cbpi-firmware
ID_LIKE=buildroot
PRETTY_NAME="CraftBeerPi Firmware (Buildroot ${BR2_VERSION})"
EOF

if [ -n "${IMAGE_VERSION:-}" ]; then
    echo "VERSION_ID=${IMAGE_VERSION}" >> ${TARGET_DIR}/etc/os-release 
fi
