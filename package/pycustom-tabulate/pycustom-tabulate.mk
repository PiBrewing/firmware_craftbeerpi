################################################################################
#
# pycustom-tabulate
#
################################################################################

PYCUSTOM_TABULATE_VERSION = 0.8.9
PYCUSTOM_TABULATE_SOURCE = tabulate-$(PYCUSTOM_TABULATE_VERSION).tar.gz
PYCUSTOM_TABULATE_SITE = https://files.pythonhosted.org/packages/ae/3d/9d7576d94007eaf3bb685acbaaec66ff4cdeb0b18f1bf1f17edbeebffb0a
PYCUSTOM_TABULATE_SETUP_TYPE = setuptools
PYCUSTOM_TABULATE_LICENSE = MIT
PYCUSTOM_TABULATE_LICENSE_FILES = LICENSE

$(eval $(python-package))
