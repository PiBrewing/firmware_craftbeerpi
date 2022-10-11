################################################################################
#
# cbpi4-ispindle
#
################################################################################

CBPI4_ISPINDLE_VERSION = 0.0.10
CBPI4_ISPINDLE_SOURCE = cbpi4-iSpindle-$(CBPI4_ISPINDLE_VERSION).tar.gz
CBPI4_ISPINDLE_SITE = https://files.pythonhosted.org/packages/70/08/41b8b794f24969af15156b11a9acadcb05744a7fbafc31a732748c41bce7
CBPI4_ISPINDLE_SETUP_TYPE = setuptools
CBPI4_ISPINDLE_LICENSE = GPL-3.0
CBPI4_ISPINDLE_LICENSE_FILES = LICENSE

$(eval $(python-package))
