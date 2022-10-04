################################################################################
#
# python-prompt-toolkit
#
################################################################################

PYTHON_PROMPT_TOOLKIT_CUSTOM_VERSION = 1.0.18
PYTHON_PROMPT_TOOLKIT_CUSTOM_SOURCE = prompt_toolkit-$(PYTHON_PROMPT_TOOLKIT_CUSTOM_VERSION).tar.gz
PYTHON_PROMPT_TOOLKIT_CUSTOM_SITE = https://files.pythonhosted.org/packages/c5/64/c170e5b1913b540bf0c8ab7676b21fdd1d25b65ddeb10025c6ca43cccd4c
PYTHON_PROMPT_TOOLKIT_CUSTOM_SETUP_TYPE = setuptools
PYTHON_PROMPT_TOOLKIT_CUSTOM_LICENSE = BSD-3-Clause
PYTHON_PROMPT_TOOLKIT_CUSTOM_LICENSE_FILES = LICENSE

$(eval $(python-package))
