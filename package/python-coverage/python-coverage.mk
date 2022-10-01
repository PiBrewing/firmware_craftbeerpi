################################################################################
#
# python-coverage
#
################################################################################

PYTHON_COVERAGE_VERSION = 6.5.0
PYTHON_COVERAGE_SOURCE = coverage-$(PYTHON_COVERAGE_VERSION).tar.gz
PYTHON_COVERAGE_SITE = https://files.pythonhosted.org/packages/5c/66/38d1870cb7cf62da49add1d6803fdbcdef632b2808b5c80bcac35b7634d8
PYTHON_COVERAGE_SETUP_TYPE = setuptools
PYTHON_COVERAGE_LICENSE = Apache-2.0
PYTHON_COVERAGE_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
