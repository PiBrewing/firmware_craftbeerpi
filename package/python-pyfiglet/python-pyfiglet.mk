################################################################################
#
# python-pyfiglet
#
################################################################################

PYTHON_PYFIGLET_VERSION = 0.8.post1
PYTHON_PYFIGLET_SOURCE = pyfiglet-$(PYTHON_PYFIGLET_VERSION).tar.gz
PYTHON_PYFIGLET_SITE = https://files.pythonhosted.org/packages/f9/02/48293654fb2e4fdeb4d927f00a380230a832744b6c9af757373a72d018d1
PYTHON_PYFIGLET_SETUP_TYPE = setuptools
PYTHON_PYFIGLET_LICENSE = FIXME: license id couldn't be detected
PYTHON_PYFIGLET_LICENSE_FILES = LICENSE

$(eval $(python-package))
