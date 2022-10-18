# CraftBeerPi Firmware

This project provides a [buildroot](https://buildroot.org) based firmware to run
[CraftBeerPi](https://github.com/craftbeerpi/craftbeerpi4) on embedded systems. Currently
the RaspberryPi 3B is supported, but adding other RaspberryPi versions is fairly easy.

## Features

- [x] Easy to install 
- [x] Support for SPI based actors/sensors
- [x] Support for I2C based actors/sensors
- [x] Support for GPIO based actors/sensors
- [x] CraftBeerPi running under Python 3.10
- [ ] CraftBeerPi state and config and USB flash drive
- [ ] Running Wifi AP on the Raspberry Pi
- [ ] Integrated MQTT broker
- [ ] Easy [rauc](https://rauc.io/) based updates via USB or OTA

## Installation

Simply flash the provided image on a suitable SD-Card (1 GB or larger),
i.e. via `dd if=<path/to/image> of=/dev/<sdcard> bs=1m status=progress`
and insert it into your RaspberryPi.

## Build

### Native

* Simply clone buildroot 2022.05.1 alongside this repository
* Change into the buildroot dir
* Run `make BR2_EXTERNAL=<path/to/firmware-craftbeerpi> craftbeerpi_rpi3_defconfig`
* Run `make`
* Under `output/images` you will find the file `sdcard.img` containing a flashable image
  for the Raspberry Pi 3B
