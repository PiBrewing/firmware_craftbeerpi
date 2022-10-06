################################################################################
#
# pycustom-click
#
################################################################################

PYCUSTOM_CLICK_VERSION = 8.0.4
PYCUSTOM_CLICK_SOURCE = click-$(PYCUSTOM_CLICK_VERSION).tar.gz
PYCUSTOM_CLICK_SITE = https://files.pythonhosted.org/packages/dd/cf/706c1ad49ab26abed0b77a2f867984c1341ed7387b8030a6aa914e2942a0
PYCUSTOM_CLICK_SETUP_TYPE = setuptools
PYCUSTOM_CLICK_LICENSE = FIXME: license id couldn't be detected, BSD-3-Clause
PYCUSTOM_CLICK_LICENSE_FILES = LICENSE.rst docs/license.rst

$(eval $(python-package))
