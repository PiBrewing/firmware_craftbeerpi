################################################################################
#
# pycustom-prompt-toolkit
#
################################################################################

PYCUSTOM_PROMPT_TOOLKIT_VERSION = 1.0.14
PYCUSTOM_PROMPT_TOOLKIT_SOURCE = prompt_toolkit-$(PYCUSTOM_PROMPT_TOOLKIT_VERSION).tar.gz
PYCUSTOM_PROMPT_TOOLKIT_SITE = https://files.pythonhosted.org/packages/55/56/8c39509b614bda53e638b7500f12577d663ac1b868aef53426fc6a26c3f5
PYCUSTOM_PROMPT_TOOLKIT_SETUP_TYPE = setuptools
PYCUSTOM_PROMPT_TOOLKIT_LICENSE = BSD-3-Clause
PYCUSTOM_PROMPT_TOOLKIT_LICENSE_FILES = LICENSE

$(eval $(python-package))
