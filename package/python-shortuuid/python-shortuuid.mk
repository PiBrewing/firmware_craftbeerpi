################################################################################
#
# python-shortuuid
#
################################################################################

PYTHON_SHORTUUID_VERSION = 1.0.8
PYTHON_SHORTUUID_SOURCE = shortuuid-$(PYTHON_SHORTUUID_VERSION).tar.gz
PYTHON_SHORTUUID_SITE = https://files.pythonhosted.org/packages/ce/c2/31dc2345d8e06711f3da9d65e3a72a060293057321815bc7f11a930c2529
PYTHON_SHORTUUID_SETUP_TYPE = setuptools
PYTHON_SHORTUUID_LICENSE = BSD-3-Clause
PYTHON_SHORTUUID_LICENSE_FILES = COPYING

$(eval $(python-package))
