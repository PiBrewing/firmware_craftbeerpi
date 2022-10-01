################################################################################
#
# python-tabulate
#
################################################################################

PYTHON_TABULATE_VERSION = 0.8.10
PYTHON_TABULATE_SOURCE = tabulate-$(PYTHON_TABULATE_VERSION).tar.gz
PYTHON_TABULATE_SITE = https://files.pythonhosted.org/packages/7a/53/afac341569b3fd558bf2b5428e925e2eb8753ad9627c1f9188104c6e0c4a
PYTHON_TABULATE_SETUP_TYPE = setuptools
PYTHON_TABULATE_LICENSE = MIT
PYTHON_TABULATE_LICENSE_FILES = LICENSE

$(eval $(python-package))
