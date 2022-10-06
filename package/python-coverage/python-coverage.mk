################################################################################
#
# python-coverage
#
################################################################################

PYTHON_COVERAGE_VERSION = 6.3.1
PYTHON_COVERAGE_SOURCE = coverage-$(PYTHON_COVERAGE_VERSION).tar.gz
PYTHON_COVERAGE_SITE = https://files.pythonhosted.org/packages/4f/9c/fd040e3291e6b123fb35474c8c685b9afa8f14abd4efba3fe2fa2b71ea2c
PYTHON_COVERAGE_SETUP_TYPE = setuptools
PYTHON_COVERAGE_LICENSE = Apache-2.0
PYTHON_COVERAGE_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
