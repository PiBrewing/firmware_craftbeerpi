#!/bin/sh

BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"

echo "compatible=cbpifw-${BOARD_NAME}" >> ${TARGET_DIR}/etc/rauc/system.conf
