################################################################################
#
# cbpi4-groupedpoweractor
#
################################################################################

CBPI4_GROUPEDPOWERACTOR_VERSION = 0.0.6
CBPI4_GROUPEDPOWERACTOR_SOURCE = cbpi4-GroupedPowerActor-$(CBPI4_GROUPEDPOWERACTOR_VERSION).tar.gz
CBPI4_GROUPEDPOWERACTOR_SITE = https://files.pythonhosted.org/packages/6d/9d/fb38f0e39f9e17d431cd14597397f85542e55c598af0f97800ac8b0485cc
CBPI4_GROUPEDPOWERACTOR_SETUP_TYPE = setuptools
CBPI4_GROUPEDPOWERACTOR_LICENSE = GPL-3.0
CBPI4_GROUPEDPOWERACTOR_LICENSE_FILES = LICENSE

$(eval $(python-package))
