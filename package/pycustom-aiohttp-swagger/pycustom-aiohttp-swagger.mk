################################################################################
#
# pycustom-aiohttp-swagger
#
################################################################################

PYCUSTOM_AIOHTTP_SWAGGER_VERSION = 1.0.16
PYCUSTOM_AIOHTTP_SWAGGER_SOURCE = aiohttp-swagger-$(PYCUSTOM_AIOHTTP_SWAGGER_VERSION).tar.gz
PYCUSTOM_AIOHTTP_SWAGGER_SITE = https://files.pythonhosted.org/packages/f6/ca/ce6f8fa22a916163e4ab3361936f0f5ff7d0f5daa7521531a089741fa7a5
PYCUSTOM_AIOHTTP_SWAGGER_SETUP_TYPE = setuptools
PYCUSTOM_AIOHTTP_SWAGGER_LICENSE = BSD-3-Clause
PYCUSTOM_AIOHTTP_SWAGGER_LICENSE_FILES = LICENSE

$(eval $(python-package))
