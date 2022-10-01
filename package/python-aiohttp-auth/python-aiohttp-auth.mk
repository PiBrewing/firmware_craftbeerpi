################################################################################
#
# python-aiohttp-auth
#
################################################################################

PYTHON_AIOHTTP_AUTH_VERSION = 0.1.1
PYTHON_AIOHTTP_AUTH_SOURCE = aiohttp_auth-$(PYTHON_AIOHTTP_AUTH_VERSION).tar.gz
PYTHON_AIOHTTP_AUTH_SITE = https://files.pythonhosted.org/packages/74/1d/261bb7e86b660cb5bdb1f4c28393d8078c189eddc1c87cd16389dfca8500
PYTHON_AIOHTTP_AUTH_SETUP_TYPE = setuptools
PYTHON_AIOHTTP_AUTH_LICENSE = MIT

$(eval $(python-package))
