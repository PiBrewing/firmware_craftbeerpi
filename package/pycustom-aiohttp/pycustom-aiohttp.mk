################################################################################
#
# pycustom-aiohttp
#
################################################################################

PYCUSTOM_AIOHTTP_VERSION = 3.8.3
PYCUSTOM_AIOHTTP_SOURCE = aiohttp-$(PYCUSTOM_AIOHTTP_VERSION).tar.gz
PYCUSTOM_AIOHTTP_SITE = https://files.pythonhosted.org/packages/ff/4f/62d9859b7d4e6dc32feda67815c5f5ab4421e6909e48cbc970b6a40d60b7
PYCUSTOM_AIOHTTP_SETUP_TYPE = setuptools
PYCUSTOM_AIOHTTP_LICENSE = FIXME: license id couldn't be detected
PYCUSTOM_AIOHTTP_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
