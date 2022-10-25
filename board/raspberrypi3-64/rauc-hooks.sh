#!/bin/bash

set -e

RPI_BOOT=/boot

case "$1" in
        slot-post-install)
                test "$RAUC_SLOT_CLASS" = "rootfs" || exit 0
		test -n "${RAUC_SLOT_BOOTNAME}" || exit 1
		test -n "${RAUC_BUNDLE_MOUNT_POINT}" || exit 1

		mount -o remount,rw "${RPI_BOOT}"
		rm -rf "${RPI_BOOT}/${RAUC_SLOT_BOOTNAME}"
		mkdir "${RPI_BOOT}/${RAUC_SLOT_BOOTNAME}"
		cp "${RAUC_BUNDLE_MOUNT_POINT}/kernel7l.img" \
			"${RAUC_BUNDLE_MOUNT_POINT}/bcm2710-rpi-3-b.dtb" \
			"${RAUC_BUNDLE_MOUNT_POINT}/bcm2710-rpi-3-b-plus.dtb" \
			"${RAUC_BUNDLE_MOUNT_POINT}/bcm2837-rpi-3-b.dtb" \
			"${RPI_BOOT}/${RAUC_SLOT_BOOTNAME}/"
			
		mkdir -p "${RPI_BOOT}/${RAUC_SLOT_BOOTNAME}/overlays"
		tar -C "${RPI_BOOT}/${RAUC_SLOT_BOOTNAME}/overlays" -x -f "${RAUC_BUNDLE_MOUNT_POINT}/overlays.tar"
		echo -e "root=${RAUC_SLOT_DEVICE} $(<${RAUC_BUNDLE_MOUNT_POINT}/cmdline.txt)" > "/boot/${RAUC_SLOT_BOOTNAME}/cmdline.txt"
		mount -o remount,ro "${RPI_BOOT}"
                ;;
        *)
                exit 1
                ;;
esac

exit 0