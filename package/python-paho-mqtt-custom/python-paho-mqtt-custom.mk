################################################################################
#
# python-paho-mqtt-custom
#
################################################################################

PYTHON_PAHO_MQTT_CUSTOM_VERSION = 1.6.1
PYTHON_PAHO_MQTT_CUSTOM_SOURCE = paho-mqtt-$(PYTHON_PAHO_MQTT_CUSTOM_VERSION).tar.gz
PYTHON_PAHO_MQTT_CUSTOM_SITE = https://files.pythonhosted.org/packages/f8/dd/4b75dcba025f8647bc9862ac17299e0d7d12d3beadbf026d8c8d74215c12
PYTHON_PAHO_MQTT_CUSTOM_SETUP_TYPE = setuptools
PYTHON_PAHO_MQTT_CUSTOM_LICENSE = FIXME: license id couldn't be detected
PYTHON_PAHO_MQTT_CUSTOM_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
