################################################################################
#
# cbpi4-pidherms
#
################################################################################

CBPI4_PIDHERMS_VERSION = 0.0.4
CBPI4_PIDHERMS_SOURCE = cbpi4-PIDHerms-$(CBPI4_PIDHERMS_VERSION).tar.gz
CBPI4_PIDHERMS_SITE = https://files.pythonhosted.org/packages/c1/e4/2c130429f6a2acaa9e200cad79b9e98304ef982325979e48f65714c171a9
CBPI4_PIDHERMS_SETUP_TYPE = setuptools
CBPI4_PIDHERMS_LICENSE = GPL-3.0
CBPI4_PIDHERMS_LICENSE_FILES = LICENSE

$(eval $(python-package))
