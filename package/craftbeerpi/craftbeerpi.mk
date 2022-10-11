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

CRAFTBEERPI_STATE_DIR=/srv/craftbeerpi

define CRAFTBEERPI_INSTALL_SETUP_FILES
	cp -r $(CRAFTBEERPI_PKGDIR)setup-data/* $(TARGET_DIR)$(CRAFTBEERPI_STATE_DIR)
endef

CRAFTBEERPI_POST_INSTALL_TARGET_HOOKS += CRAFTBEERPI_INSTALL_SETUP_FILES

define CRAFTBEERPI_PERMISSIONS
	$(CRAFTBEERPI_STATE_DIR) r 644 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR) d 744 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR)/logs d 744 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR)/logs/sensors d 744 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR)/config d 744 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR)/config/dashboard d 744 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR)/config/dashboard/widgets d 744 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR)/config/recipes d 744 1000 1000 - - - - -
	$(CRAFTBEERPI_STATE_DIR)/config/upload d 744 1000 1000 - - - - -
endef

define CRAFTBEERPI_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 -t $(TARGET_DIR)/usr/lib/systemd/system $(CRAFTBEERPI_PKGDIR)/craftbeerpi.service
endef

define CRAFTBEERPI_USERS
	craftbeerpi 1000 craftbeerpi 1000 * /srv/craftbeerpi - dialout
endef

$(eval $(python-package))
