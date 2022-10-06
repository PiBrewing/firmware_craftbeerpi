################################################################################
#
# pycustom-psutil
#
################################################################################

PYCUSTOM_PSUTIL_VERSION = 5.9.0
PYCUSTOM_PSUTIL_SOURCE = psutil-$(PYCUSTOM_PSUTIL_VERSION).tar.gz
PYCUSTOM_PSUTIL_SITE = https://files.pythonhosted.org/packages/47/b6/ea8a7728f096a597f0032564e8013b705aa992a0990becd773dcc4d7b4a7
PYCUSTOM_PSUTIL_SETUP_TYPE = setuptools
PYCUSTOM_PSUTIL_LICENSE = BSD-3-Clause
PYCUSTOM_PSUTIL_LICENSE_FILES = LICENSE

$(eval $(python-package))
