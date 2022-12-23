#!/bin/bash

install -D -m 0644 "${BOARD_DIR}/fixup4.dat" "${BINARIES_DIR}/fixup4.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4cd.dat" "${BINARIES_DIR}/fixup4cd.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4db.dat" "${BINARIES_DIR}/fixup4db.dat"
install -D -m 0644 "${BOARD_DIR}/fixup4x.dat" "${BINARIES_DIR}/fixup4x.dat"
install -D -m 0644 "${BOARD_DIR}/start4.elf" "${BINARIES_DIR}/start4.elf"
install -D -m 0644 "${BOARD_DIR}/start4cd.elf" "${BINARIES_DIR}/start4cd.elf"
install -D -m 0644 "${BOARD_DIR}/start4db.elf" "${BINARIES_DIR}/start4db.elf"
install -D -m 0644 "${BOARD_DIR}/start4x.elf" "${BINARIES_DIR}/start4x.elf"