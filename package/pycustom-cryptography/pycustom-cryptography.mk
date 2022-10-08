################################################################################
#
# pycustom-cryptography
#
################################################################################

PYCUSTOM_CRYPTOGRAPHY_VERSION = 36.0.1
PYCUSTOM_CRYPTOGRAPHY_SOURCE = cryptography-$(PYCUSTOM_CRYPTOGRAPHY_VERSION).tar.gz
PYCUSTOM_CRYPTOGRAPHY_SITE = https://files.pythonhosted.org/packages/f9/4b/1cf8e281f7ae4046a59e5e39dd7471d46db9f61bb564fddbff9084c4334f
PYCUSTOM_CRYPTOGRAPHY_SETUP_TYPE = setuptools
PYCUSTOM_CRYPTOGRAPHY_LICENSE = FIXME: license id couldn't be detected
PYCUSTOM_CRYPTOGRAPHY_DEPENDENCIES = host-python-setuptools-rust
PYCUSTOM_CRYPTOGRAPHY_LICENSE_FILES = LICENSE

$(eval $(python-package))
