################################################################################
#
# python-tabulate
#
################################################################################

PYTHON_TABULATE_VERSION = 0.8.9
PYTHON_TABULATE_SOURCE = tabulate-$(PYTHON_TABULATE_VERSION).tar.gz
PYTHON_TABULATE_SITE = https://files.pythonhosted.org/packages/ae/3d/9d7576d94007eaf3bb685acbaaec66ff4cdeb0b18f1bf1f17edbeebffb0a
PYTHON_TABULATE_SETUP_TYPE = setuptools
PYTHON_TABULATE_LICENSE = MIT
PYTHON_TABULATE_LICENSE_FILES = LICENSE

$(eval $(python-package))
