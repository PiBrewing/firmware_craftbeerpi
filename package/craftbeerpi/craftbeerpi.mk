# craftbeerpi

CRAFTBEERPI_VERSION = master
CRAFTBEERPI_SITE = $(call github,craftbeerpi,craftbeerpi4,$(CRAFTBEERPI_VERSION))
CRAFTBEERPI_LICENSE = GPL-3
CRAFTBEERPI_LICENSE_FILES = LICENSE
CRAFTBEERPI_SETUP_TYPE = setuptools

define CRAFTBEERPI_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 -t $(TARGET_DIR)/usr/lib/systemd/system $(CRAFTBEERPI_PKGDIR)/craftbeerpi.service
endef

define CRAFTBEERPI_USERS
	craftbeerpi 1000 craftbeerpi 1000 * - - -
endef

$(eval $(python-package))
