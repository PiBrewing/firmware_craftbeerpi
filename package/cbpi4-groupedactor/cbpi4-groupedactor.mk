################################################################################
#
# cbpi4-groupedactor
#
################################################################################

CBPI4_GROUPEDACTOR_VERSION = 0.0.5
CBPI4_GROUPEDACTOR_SOURCE = cbpi4-GroupedActor-$(CBPI4_GROUPEDACTOR_VERSION).tar.gz
CBPI4_GROUPEDACTOR_SITE = https://files.pythonhosted.org/packages/ed/f9/eb3ef543a8025e9c5e1478e5242ce8d1234d42d6b0b7ecb7e78580372ad3
CBPI4_GROUPEDACTOR_SETUP_TYPE = setuptools
CBPI4_GROUPEDACTOR_LICENSE = GPL-3.0
CBPI4_GROUPEDACTOR_LICENSE_FILES = LICENSE

$(eval $(python-package))
