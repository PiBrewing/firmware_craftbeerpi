# craftbeerpi

CRAFTBEERPI_VERSION = 988f19ebddd89852b9e19dd668eff41558ecbc97
CRAFTBEERPI_SITE = $(call github,craftbeerpi,craftbeerpi4,$(CRAFTBEERPI_VERSION))
CRAFTBEERPI_LICENSE = GPL-3
CRAFTBEERPI_LICENSE_FILES = LICENSE
CRAFTBEERPI_SETUP_TYPE = setuptools
CRAFTBEERPI_DEPENDENCIES = python-requests python-aiohttp \
	python-aiohttp-auth python-aiohttp-route-decorator \
	python-aiohttp-security python-aiohttp-session python-aiohttp-swagger \
	python-aiojobs python-aiosqlite python-cryptography python-voluptuous \
	python-pyfiglet python-pandas python-shortuuid python-tabulate python-numpy \
	python-click python-importlib_metadata python-asyncio-mqtt \
	python-psutil python-zipp python-pyinquirer python-colorama python-pytest-aiohttp \
	python-coverage craftbeerpi-ui

define CRAFTBEERPI_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 -t $(TARGET_DIR)/usr/lib/systemd/system $(CRAFTBEERPI_PKGDIR)/craftbeerpi.service
endef

define CRAFTBEERPI_USERS
	craftbeerpi 1000 craftbeerpi 1000 * - - -
endef

$(eval $(python-package))
