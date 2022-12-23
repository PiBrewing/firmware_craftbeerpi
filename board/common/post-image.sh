#!/bin/bash

set -e

COMMON_DIR="$(dirname $0)"


install -D -m 0644 "${COMMON_DIR}/cbpifw-update.pem" "${BINARIES_DIR}/cbpifw-update.pem"

if [[ "${CBPIFW_DEV_BUILD}" == "true" ]]; then
    [[ -f "${BINARIES_DIR}/cbpifw-dev.cert.pem" ]] || openssl req -x509 -newkey rsa:4096 -nodes -keyout "${BINARIES_DIR}/cbpifw-dev.key.pem" -out "${BINARIES_DIR}/cbpifw-dev.cert.pem" -subj "/O=cbpifw/CN=cbpifw-dev-update"
    cat ${BINARIES_DIR}/cbpifw-dev.cert.pem >> ${BINARIES_DIR}/cbpifw-update.pem
fi

rm -f "${BINARIES_DIR}/overlays.tar"
tar -C "${BINARIES_DIR}/rpi-firmware/overlays" -c -f "${BINARIES_DIR}/overlays.tar" .
