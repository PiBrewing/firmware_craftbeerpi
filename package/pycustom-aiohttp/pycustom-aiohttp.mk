################################################################################
#
# pycustom-aiohttp
#
################################################################################

PYCUSTOM_AIOHTTP_VERSION = 3.8.1
PYCUSTOM_AIOHTTP_SOURCE = aiohttp-$(PYCUSTOM_AIOHTTP_VERSION).tar.gz
PYCUSTOM_AIOHTTP_SITE = https://files.pythonhosted.org/packages/5a/86/5f63de7a202550269a617a5d57859a2961f3396ecd1739a70b92224766bc
PYCUSTOM_AIOHTTP_SETUP_TYPE = setuptools
PYCUSTOM_AIOHTTP_LICENSE = FIXME: license id couldn't be detected
PYCUSTOM_AIOHTTP_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
