CRAFTBEERPI_PID_AUTOTUNE_VERSION = Kettle controller that can be used to determine the PID parameters for the PID based Kettle controllers
CRAFTBEERPI_PID_AUTOTUNE_SITE = $(call github,avollkopf,cbpi4-PID_AutoTune,$(CRAFTBEERPI_PID_AUTOTUNE_VERSION))
CRAFTBEERPI_PID_AUTOTUNE_LICENSE = GPL-3
CRAFTBEERPI_PID_AUTOTUNE_LICENSE_FILES = LICENSE
CRAFTBEERPI_PID_AUTOTUNE_SETUP_TYPE = setuptools

$(eval $(python-package))
