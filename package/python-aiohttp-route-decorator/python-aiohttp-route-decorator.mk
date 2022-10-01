################################################################################
#
# python-aiohttp-route-decorator
#
################################################################################

PYTHON_AIOHTTP_ROUTE_DECORATOR_VERSION = 0.1.4
PYTHON_AIOHTTP_ROUTE_DECORATOR_SOURCE = aiohttp_route_decorator-$(PYTHON_AIOHTTP_ROUTE_DECORATOR_VERSION).tar.gz
PYTHON_AIOHTTP_ROUTE_DECORATOR_SITE = https://files.pythonhosted.org/packages/4f/b6/3af0444d36812b68367c3bb8ff65d0ccf5ba855ce28cda5ce10ff465021a
PYTHON_AIOHTTP_ROUTE_DECORATOR_SETUP_TYPE = setuptools
PYTHON_AIOHTTP_ROUTE_DECORATOR_LICENSE = BSD

$(eval $(python-package))
