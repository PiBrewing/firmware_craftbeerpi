################################################################################
#
# python-zipp
#
################################################################################

PYTHON_IMPORTLIB_METADATA_VERSION = 4.12.0
PYTHON_IMPORTLIB_METADATA_SOURCE = importlib_metadata-$(PYTHON_IMPORTLIB_METADATA_VERSION).tar.gz
PYTHON_IMPORTLIB_METADATA_SITE = https://files.pythonhosted.org/packages/1a/16/441080c907df829016729e71d8bdd42d99b9bdde48b01492ed08912c0aa9
PYTHON_IMPORTLIB_METADATA_SETUP_TYPE = setuptools
PYTHON_IMPORTLIB_METADATA_LICENSE = Apache 2.0
PYTHON_IMPORTLIB_METADATA_LICENSE_FILES = LICENSE

$(eval $(python-package))
