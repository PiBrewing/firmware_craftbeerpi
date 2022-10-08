################################################################################
#
# pycustom-aiohttp-session
#
################################################################################

PYCUSTOM_AIOHTTP_SESSION_VERSION = 2.11.0
PYCUSTOM_AIOHTTP_SESSION_SOURCE = aiohttp-session-$(PYCUSTOM_AIOHTTP_SESSION_VERSION).tar.gz
PYCUSTOM_AIOHTTP_SESSION_SITE = https://files.pythonhosted.org/packages/3b/a7/0b97b9a2e3a553a86a6703f86b0e9b1afb2b262849700e8f80015c0f643f
PYCUSTOM_AIOHTTP_SESSION_SETUP_TYPE = setuptools
PYCUSTOM_AIOHTTP_SESSION_LICENSE = FIXME: license id couldn't be detected
PYCUSTOM_AIOHTTP_SESSION_LICENSE_FILES = LICENSE

$(eval $(python-package))
