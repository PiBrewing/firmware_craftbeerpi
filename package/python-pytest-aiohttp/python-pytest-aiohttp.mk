################################################################################
#
# python-pytest-aiohttp
#
################################################################################

PYTHON_PYTEST_AIOHTTP_VERSION = 1.0.4
PYTHON_PYTEST_AIOHTTP_SOURCE = pytest-aiohttp-$(PYTHON_PYTEST_AIOHTTP_VERSION).tar.gz
PYTHON_PYTEST_AIOHTTP_SITE = https://files.pythonhosted.org/packages/11/fa/64b1bbc2514c934fd8cd251cc91ba38faa533c3fbbab5b7cf17d54b05e22
PYTHON_PYTEST_AIOHTTP_SETUP_TYPE = setuptools
PYTHON_PYTEST_AIOHTTP_LICENSE = Apache 2.0
PYTHON_PYTEST_AIOHTTP_LICENSE_FILES = LICENSE

$(eval $(python-package))
