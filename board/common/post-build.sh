#!/bin/sh

set -u
set -e

mkdir -p ${TARGET_DIR}/boot

rm -rf ${TARGET_DIR}/usr/share/factory/var
cp -dpfr ${TARGET_DIR}/var ${TARGET_DIR}/usr/share/factory/

cp ${TARGET_DIR}/usr/lib/libWPEBackend-fdo-1.0.so.1.8.0 ${TARGET_DIR}/usr/lib/libWPEBackend-default.so

cat << EOF > ${TARGET_DIR}/etc/os-release
NAME=craftbeerpi
ID=craftbeerpi
ID_LIKE=buildroot
PRETTY_NAME="craftbeerpi (Buildroot ${BR2_VERSION})"
EOF

if [ -n "${GITHUB_SHA:-}" ]; then
    echo "VERSION_ID=${GITHUB_SHA}" >> ${TARGET_DIR}/etc/os-release 
fi
