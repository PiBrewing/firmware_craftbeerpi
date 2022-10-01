################################################################################
#
# python-voluptuous
#
################################################################################

PYTHON_VOLUPTUOUS_VERSION = 0.13.1
PYTHON_VOLUPTUOUS_SOURCE = voluptuous-$(PYTHON_VOLUPTUOUS_VERSION).tar.gz
PYTHON_VOLUPTUOUS_SITE = https://files.pythonhosted.org/packages/72/0c/0ed7352eeb7bd3d53d2c0ae87fa1e222170f53815b8df7d9cdce7ffedec0
PYTHON_VOLUPTUOUS_SETUP_TYPE = setuptools
PYTHON_VOLUPTUOUS_LICENSE = BSD-3-Clause
PYTHON_VOLUPTUOUS_LICENSE_FILES = COPYING

$(eval $(python-package))
