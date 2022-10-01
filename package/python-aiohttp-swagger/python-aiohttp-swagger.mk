################################################################################
#
# python-aiohttp-swagger
#
################################################################################

PYTHON_AIOHTTP_SWAGGER_VERSION = 1.0.16
PYTHON_AIOHTTP_SWAGGER_SOURCE = aiohttp-swagger-$(PYTHON_AIOHTTP_SWAGGER_VERSION).tar.gz
PYTHON_AIOHTTP_SWAGGER_SITE = https://files.pythonhosted.org/packages/f6/ca/ce6f8fa22a916163e4ab3361936f0f5ff7d0f5daa7521531a089741fa7a5
PYTHON_AIOHTTP_SWAGGER_SETUP_TYPE = setuptools
PYTHON_AIOHTTP_SWAGGER_LICENSE = BSD-3-Clause
PYTHON_AIOHTTP_SWAGGER_LICENSE_FILES = LICENSE

$(eval $(python-package))
