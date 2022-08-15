CRAFTBEERPI_PID_HERMS_VERSION = Kettle controller with PID logic, Boil power parameter and HLT temp sensor condition
CRAFTBEERPI_PID_HERMS_SITE = $(call github,avollkopf,cbpi4-PIDHerms,$(CRAFTBEERPI_PID_HERMS_VERSION))
CRAFTBEERPI_PID_HERMS_LICENSE = GPL-3
CRAFTBEERPI_PID_HERMS_LICENSE_FILES = LICENSE
CRAFTBEERPI_PID_HERMS_SETUP_TYPE = setuptools

$(eval $(python-package))
