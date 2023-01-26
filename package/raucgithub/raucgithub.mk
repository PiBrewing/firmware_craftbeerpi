RAUCGITHUB_VERSION = v0.1.0-pre.1
RAUCGITHUB_SITE = $(call github,dereulenspiegel,rauc-github,$(RAUCGITHUB_VERSION))
RAUCGITHUB_GOMOD = github.com/dereulenspiegel/raucgithub
RAUCGITHUB_LICENSE = MIT
RAUCGITHUB_LICENSE_FILES = LICENSE
RAUCGITHUB_LDFLAGS = -s -w -X 'main.version=$(RAUCGITHUB_VERSION)' -X 'main.commit=unspecified' -X 'main.date=unspecified' -X 'main.builtBy=buildroot'
RAUCGITHUB_BUILD_TARGETS = cmd
RAUCGITHUB_BIN_NAME = raucgithub
RAUCGITHUB_INSTALL_BINS = raucgithub

define RAUCGITHUB_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 -t $(TARGET_DIR)/usr/lib/systemd/system $(RAUCGITHUB_PKGDIR)/raucgithub.service
endef

define RAUCGITHUB_INSTALL_DBUS_POLICY
	$(INSTALL) -D -m 644 -t $(TARGET_DIR)/etc/dbus-1/system.d $(RAUCGITHUB_PKGDIR)/com.github.dereulenspiegel.rauc.conf
endef

RAUCGITHUB_POST_INSTALL_TARGET_HOOKS += RAUCGITHUB_INSTALL_DBUS_POLICY

define RAUCGITHUB_USERS
	raucgithub 901 raucgithub 901 * - - -
endef

$(eval $(golang-package))
