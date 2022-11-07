# CraftBeerPi Firmware

This project provides a [buildroot](https://buildroot.org) based firmware to run
[CraftBeerPi](https://github.com/craftbeerpi/craftbeerpi4) on embedded systems. Currently
the RaspberryPi 3B is supported, but adding other RaspberryPi versions is fairly easy.

## Motivation and intended use

This project exists to lower the barrier of entry for using CraftBeerPi even more. Installing CraftBeerPi
should be as easy as flashing an image to an SD-Card and be done with it. But furhermore the use should
be reliable enough even for commercial applications and still be simple enough that an average brewer
can have safe and reliable operation of CraftBeerPi without deep IT knowledge.
This image provides a buildroot based firmware providing everything necessary to run CraftBeerPi. By using
Buildroot we can utilize a readonly root filesystems which reduces strain to the sd card, prolonging it's life.
Also there is no unnecessary bloat, enabling possibly better perfomance than with Raspberry OS.
To keep operations simple all the state of CraftBeerPi is stored on an attached USB drive. This enables the 
brewer to have a simple backup procedure, without the need to know anything about Linux, SSH etc.
Also in the future, basic configuration can be done via the existence and content of files on the USB drive
(i.e. enabling a WiFi AP for complete standalone usage etc.).

## Features

- [x] Easy to install 
- [x] Support for SPI based actors/sensors
- [x] Support for I2C based actors/sensors
- [x] Support for GPIO based actors/sensors
- [x] CraftBeerPi running under Python 3.10
- [x] CraftBeerPi state and config on USB flash drive
- [x] Announce CraftBeerPi service via mDNS 
- [x] Running Wifi AP on the Raspberry Pi
- [ ] Integrated MQTT broker
- [ ] Easy [rauc](https://rauc.io/) based updates via USB or OTA

## Supported Platforms

- [x] Raspberry Pi 3B+
- [x] Raspberry Pi 4B

## Usage

* Flash the provided image to your sd card (i.e. via `dd if=<path/to/image> of=/dev/<sdcard> bs=1m status=progress`)
* Insert 1 (exactly one, not more) exFAT formatted USB drive into one of the USB ports of the Raspberry Pi
* Boot the Raspberry Pi

### Enabling the WiFi AP

The WiFi AP will be enabled if a file called `ap.conf` is found in the top folder of the USB drive. At this point in
time this is simply a file containing hostapd configuration. The file needs to have the following content:

```
interface=wlan0
driver=nl80211
ssid=<Name of the AP>
auth_algs=1
ignore_broadcast_ssid=0
hw_mode=g
wpa=2
wpa_passphrase=<Password for the WiFi>
wpa_key_mgmt=WPA-PSK
channel=5
country_code=DE
```

## Build

### Native

* Simply clone buildroot 2022.05.1 alongside this repository
* Change into the buildroot dir
* Run `make BR2_EXTERNAL=<path/to/firmware-craftbeerpi> craftbeerpi_rpi3_defconfig`
* Run `make`
* Under `output/images` you will find the file `sdcard.img` containing a flashable image
  for the Raspberry Pi 3B

### Docker

This repo provides a Dockerfile to provide an easy to use build environment.

* Build with `docker build -t <name-and-tag> .`
* Run with `docker run -ti --rm -v $PWD/:/home/br-user/external:rw <name-and-tag>`
* Change into `/home/br-user/buildroot`
* In the provided shell execute `make BR2_EXTERNAL=../external/ craftbeerpi_rpi3_defconfig` and `make`
* After the build finishes you can copy `output/images/sdcard.img` to `/home/br-user/external/sdcard.img`
  and flash it as usual
