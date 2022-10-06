################################################################################
#
# python-importlib-metadata
#
################################################################################

PYTHON_IMPORTLIB_METADATA_VERSION = 4.11.1
PYTHON_IMPORTLIB_METADATA_SOURCE = importlib_metadata-$(PYTHON_IMPORTLIB_METADATA_VERSION).tar.gz
PYTHON_IMPORTLIB_METADATA_SITE = https://files.pythonhosted.org/packages/82/10/600b88188a4e94562cfdf202ef1aca6fedda0723acae8a47376350ec0d5d
PYTHON_IMPORTLIB_METADATA_SETUP_TYPE = setuptools
PYTHON_IMPORTLIB_METADATA_LICENSE = FIXME: license id couldn't be detected
PYTHON_IMPORTLIB_METADATA_LICENSE_FILES = LICENSE

$(eval $(python-package))
