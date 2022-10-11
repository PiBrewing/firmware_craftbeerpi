################################################################################
#
# cbpi4-pidboil
#
################################################################################

CBPI4_PIDBOIL_VERSION = 0.0.7
CBPI4_PIDBOIL_SOURCE = cbpi4-PIDBoil-$(CBPI4_PIDBOIL_VERSION).tar.gz
CBPI4_PIDBOIL_SITE = https://files.pythonhosted.org/packages/8c/b0/ffef98e9e09046c793620bc998c2ddbffc956e690776d991ba71387ae810
CBPI4_PIDBOIL_SETUP_TYPE = setuptools
CBPI4_PIDBOIL_LICENSE = GPL-3.0
CBPI4_PIDBOIL_LICENSE_FILES = LICENSE

$(eval $(python-package))
