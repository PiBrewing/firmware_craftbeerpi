CRAFTBEERPI_SYSTEM_VERSION = System Sensors: Temp, CPU load, Memory
CRAFTBEERPI_SYSTEM_SITE = $(call github,avollkopf,cbpi4-system,$(CRAFTBEERPI_SYSTEM_VERSION))
CRAFTBEERPI_SYSTEM_LICENSE = GPL-3
CRAFTBEERPI_SYSTEM_LICENSE_FILES = LICENSE
CRAFTBEERPI_SYSTEM_SETUP_TYPE = setuptools

$(eval $(python-package))
