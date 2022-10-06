################################################################################
#
# pycustom-aiojobs
#
################################################################################

PYCUSTOM_AIOJOBS_VERSION = 1.0.0
PYCUSTOM_AIOJOBS_SOURCE = aiojobs-$(PYCUSTOM_AIOJOBS_VERSION).tar.gz
PYCUSTOM_AIOJOBS_SITE = https://files.pythonhosted.org/packages/74/3f/1d31bd2163795f54fb29df13594bd962548a0f9ac4f113b31b260467a6ef
PYCUSTOM_AIOJOBS_SETUP_TYPE = setuptools

$(eval $(python-package))
