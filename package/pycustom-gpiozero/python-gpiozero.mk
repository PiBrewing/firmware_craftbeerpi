################################################################################
#
# python-gpiozero
#
################################################################################

PYCUSTOM_GPIOZERO_VERSION = 1.6.2
PYCUSTOM_GPIOZERO_SITE = $(call github,gpiozero,gpiozero,v$(PYCUSTOM_GPIOZERO_VERSION))
PYCUSTOM_GPIOZERO_LICENSE = BSD-3-Clause
PYCUSTOM_GPIOZERO_LICENSE_FILES = LICENSE.rst
PYCUSTOM_GPIOZERO_SETUP_TYPE = setuptools

$(eval $(python-package))
