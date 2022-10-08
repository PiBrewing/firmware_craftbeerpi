################################################################################
#
# pycustom-aiohttp-security
#
################################################################################

PYCUSTOM_AIOHTTP_SECURITY_VERSION = 0.4.0
PYCUSTOM_AIOHTTP_SECURITY_SOURCE = aiohttp-security-$(PYCUSTOM_AIOHTTP_SECURITY_VERSION).tar.gz
PYCUSTOM_AIOHTTP_SECURITY_SITE = https://files.pythonhosted.org/packages/36/01/d85be376b7c1773b3cb7849cd56dc7d38165664df7de2d3e20af507ef5bb
PYCUSTOM_AIOHTTP_SECURITY_SETUP_TYPE = setuptools
PYCUSTOM_AIOHTTP_SECURITY_LICENSE = Apache-2.0
PYCUSTOM_AIOHTTP_SECURITY_LICENSE_FILES = LICENSE

$(eval $(python-package))
