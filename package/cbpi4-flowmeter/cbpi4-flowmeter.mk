################################################################################
#
# cbpi4-flowmeter
#
################################################################################

CBPI4_FLOWMETER_VERSION = 0.0.4
CBPI4_FLOWMETER_SOURCE = cbpi4-Flowmeter-$(CBPI4_FLOWMETER_VERSION).tar.gz
CBPI4_FLOWMETER_SITE = https://files.pythonhosted.org/packages/ff/51/b57e9fb4df17715c620a2b9bc70155209090ad9a29b1ebe290002fd2bd06
CBPI4_FLOWMETER_SETUP_TYPE = setuptools
CBPI4_FLOWMETER_LICENSE = GPL-3.0
CBPI4_FLOWMETER_LICENSE_FILES = LICENSE

$(eval $(python-package))
