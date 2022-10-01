################################################################################
#
# python-pyinquirer
#
################################################################################

PYTHON_PYINQUIRER_VERSION = 1.0.3
PYTHON_PYINQUIRER_SOURCE = PyInquirer-$(PYTHON_PYINQUIRER_VERSION).tar.gz
PYTHON_PYINQUIRER_SITE = https://files.pythonhosted.org/packages/fb/4c/434b7c454010a284b49d6f1d446fe8dc5960415613d8c0225b9e2efb6724
PYTHON_PYINQUIRER_SETUP_TYPE = setuptools
PYTHON_PYINQUIRER_LICENSE = MIT
PYTHON_PYINQUIRER_LICENSE_FILES = LICENSE

$(eval $(python-package))
