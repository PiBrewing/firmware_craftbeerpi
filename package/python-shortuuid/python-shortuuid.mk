################################################################################
#
# python-shortuuid
#
################################################################################

PYTHON_SHORTUUID_VERSION = 1.0.9
PYTHON_SHORTUUID_SOURCE = shortuuid-$(PYTHON_SHORTUUID_VERSION).tar.gz
PYTHON_SHORTUUID_SITE = https://files.pythonhosted.org/packages/93/71/026c64b145a306c3b555d69f03d1e9c97d363faa64ddcf9345caf49e213f
PYTHON_SHORTUUID_SETUP_TYPE = setuptools
PYTHON_SHORTUUID_LICENSE = FIXME: please specify the exact BSD version, Other/Proprietary License
PYTHON_SHORTUUID_LICENSE_FILES = COPYING

$(eval $(python-package))
