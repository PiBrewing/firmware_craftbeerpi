################################################################################
#
# pycustom-typing-extensions
#
################################################################################

PYCUSTOM_TYPING_EXTENSIONS_VERSION = 4.3.0
PYCUSTOM_TYPING_EXTENSIONS_SOURCE = typing_extensions-$(PYCUSTOM_TYPING_EXTENSIONS_VERSION).tar.gz
PYCUSTOM_TYPING_EXTENSIONS_SITE = https://files.pythonhosted.org/packages/9e/1d/d128169ff58c501059330f1ad96ed62b79114a2eb30b8238af63a2e27f70
PYCUSTOM_TYPING_EXTENSIONS_SETUP_TYPE = setuptools
PYCUSTOM_TYPING_EXTENSIONS_LICENSE = FIXME: license id couldn't be detected
PYCUSTOM_TYPING_EXTENSIONS_LICENSE_FILES = LICENSE

$(eval $(python-package))
