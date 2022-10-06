################################################################################
#
# pycustom-requests
#
################################################################################

PYCUSTOM_REQUESTS_VERSION = 2.27.1
PYCUSTOM_REQUESTS_SOURCE = requests-$(PYCUSTOM_REQUESTS_VERSION).tar.gz
PYCUSTOM_REQUESTS_SITE = https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77
PYCUSTOM_REQUESTS_SETUP_TYPE = setuptools
PYCUSTOM_REQUESTS_LICENSE = Apache-2.0
PYCUSTOM_REQUESTS_LICENSE_FILES = LICENSE

$(eval $(python-package))
