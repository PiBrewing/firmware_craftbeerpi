# craftbeerpi

CRAFTBEERPI_VERSION = 988f19ebddd89852b9e19dd668eff41558ecbc97
CRAFTBEERPI_SITE = $(call github,craftbeerpi,craftbeerpi4,$(CRAFTBEERPI_VERSION))
CRAFTBEERPI_LICENSE = GPL-3
CRAFTBEERPI_LICENSE_FILES = LICENSE
CRAFTBEERPI_SETUP_TYPE = setuptools
CRAFTBEERPI_DEPENDENCIES = pycustom-requests pycustom-aiohttp \
	python-aiohttp-auth python-aiohttp-route-decorator \
	pycustom-aiohttp-security pycustom-aiohttp-session pycustom-aiohttp-swagger \
	pycustom-aiojobs python-aiosqlite pycustom-cryptography python-voluptuous \
	python-pyfiglet python-pandas python-shortuuid python-tabulate pycustom-numpy \
	pycustom-click python-importlib-metadata python-asyncio-mqtt \
	pycustom-psutil python-zipp python-pyinquirer python-colorama python-pytest-aiohttp \
	python-coverage python-dateutil python-pytz python-ticket-auth python-setuptools \
	craftbeerpi-ui

define CRAFTBEERPI_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 -t $(TARGET_DIR)/usr/lib/systemd/system $(CRAFTBEERPI_PKGDIR)/craftbeerpi.service
endef

define CRAFTBEERPI_USERS
	craftbeerpi 1000 craftbeerpi 1000 * /srv/craftbeerpi - dialout
endef

$(eval $(python-package))
