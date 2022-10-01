################################################################################
#
# python-pandas
#
################################################################################

PYTHON_PANDAS_VERSION = 1.5.0
PYTHON_PANDAS_SOURCE = pandas-$(PYTHON_PANDAS_VERSION).tar.gz
PYTHON_PANDAS_SITE = https://files.pythonhosted.org/packages/2a/24/f5042daa59b91e94e6ea41edbb28d2b7e3712d0cf54a76f9ffde394efbe7
PYTHON_PANDAS_SETUP_TYPE = setuptools
PYTHON_PANDAS_LICENSE = BSD 3-Clause License
PYTHON_PANDAS_LICENSE_FILES = LICENSE

$(eval $(python-package))
