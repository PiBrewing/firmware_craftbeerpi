################################################################################
#
# cbpi4-recipeimport
#
################################################################################

CBPI4_RECIPEIMPORT_VERSION = 0.0.1
CBPI4_RECIPEIMPORT_SOURCE = cbpi4-RecipeImport-$(CBPI4_RECIPEIMPORT_VERSION).tar.gz
CBPI4_RECIPEIMPORT_SITE = https://files.pythonhosted.org/packages/a8/2c/ccec418367c09b6c741cbc9195a79219de7831a90f1ec876cfe21434ac17
CBPI4_RECIPEIMPORT_SETUP_TYPE = setuptools

$(eval $(python-package))
