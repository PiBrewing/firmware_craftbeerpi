################################################################################
#
# python-voluptuous
#
################################################################################

PYTHON_VOLUPTUOUS_VERSION = 0.12.2
PYTHON_VOLUPTUOUS_SOURCE = voluptuous-$(PYTHON_VOLUPTUOUS_VERSION).tar.gz
PYTHON_VOLUPTUOUS_SITE = https://files.pythonhosted.org/packages/c0/2c/ccbeb25364e3e0c5e4522f13d66e2fc639bb4d4ecdf73be0959552cbecb4
PYTHON_VOLUPTUOUS_SETUP_TYPE = setuptools
PYTHON_VOLUPTUOUS_LICENSE = BSD-3-Clause
PYTHON_VOLUPTUOUS_LICENSE_FILES = COPYING

$(eval $(python-package))
