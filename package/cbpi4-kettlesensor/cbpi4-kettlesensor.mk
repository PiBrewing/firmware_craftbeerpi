################################################################################
#
# cbpi4-kettlesensor
#
################################################################################

CBPI4_KETTLESENSOR_VERSION = 0.0.6
CBPI4_KETTLESENSOR_SOURCE = cbpi4-KettleSensor-$(CBPI4_KETTLESENSOR_VERSION).tar.gz
CBPI4_KETTLESENSOR_SITE = https://files.pythonhosted.org/packages/bb/c3/7f173517a33a8a9364b9c335e23ee57c5ee3fb28f600f791242c28b0f725
CBPI4_KETTLESENSOR_SETUP_TYPE = setuptools

$(eval $(python-package))
