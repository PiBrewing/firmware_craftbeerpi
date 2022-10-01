################################################################################
#
# python-asyncio-mqtt
#
################################################################################

PYTHON_ASYNCIO_MQTT_VERSION = 0.12.1
PYTHON_ASYNCIO_MQTT_SOURCE = asyncio_mqtt-$(PYTHON_ASYNCIO_MQTT_VERSION).tar.gz
PYTHON_ASYNCIO_MQTT_SITE = https://files.pythonhosted.org/packages/c1/0f/c34c727d3184c7430e547a8c6b1b60099b347c6356ff4962ecfc66313850
PYTHON_ASYNCIO_MQTT_SETUP_TYPE = setuptools
PYTHON_ASYNCIO_MQTT_LICENSE = OSI Approved

$(eval $(python-package))
