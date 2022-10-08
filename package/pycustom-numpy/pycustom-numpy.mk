################################################################################
#
# pycustom-numpy
#
################################################################################

PYCUSTOM_NUMPY_VERSION = 1.22.2
PYCUSTOM_NUMPY_SOURCE = numpy-$(PYCUSTOM_NUMPY_VERSION).zip
PYCUSTOM_NUMPY_SITE = https://files.pythonhosted.org/packages/e9/6c/c0a8130fe198f27bab92f1b28631e0cc2572295f6b7a31e87efe7448aa1c
PYCUSTOM_NUMPY_SETUP_TYPE = setuptools
PYCUSTOM_NUMPY_LICENSE = BSD-3-Clause, FIXME: license id couldn't be detected, Apache-2.0, Zlib, MIT
PYCUSTOM_NUMPY_LICENSE_FILES = LICENSE.txt tools/npy_tempita/license.txt numpy/core/include/numpy/libdivide/LICENSE.txt numpy/core/src/umath/svml/LICENSE numpy/linalg/lapack_lite/LICENSE.txt numpy/ma/LICENSE numpy/random/LICENSE.md numpy/random/src/mt19937/LICENSE.md numpy/random/src/sfc64/LICENSE.md numpy/random/src/pcg64/LICENSE.md numpy/random/src/philox/LICENSE.md numpy/random/src/splitmix64/LICENSE.md numpy/random/src/distributions/LICENSE.md doc/source/license.rst doc/source/_static/scipy-mathjax/LICENSE
PYCUSTOM_NUMPY_ENV = NPY_DISABLE_SVML=1

define PYCUSTOM_NUMPY_EXTRACT_CMDS
        $(UNZIP) -d $(@D) $(PYCUSTOM_NUMPY_DL_DIR)/$(PYCUSTOM_NUMPY_SOURCE)
        mv $(@D)/numpy-$(PYCUSTOM_NUMPY_VERSION)/* $(@D)
        $(RM) -r $(@D)/numpy-$(PYCUSTOM_NUMPY_VERSION)
endef

define HOST_PYCUSTOM_NUMPY_EXTRACT_CMDS
	$(UNZIP) -d $(@D) $(HOST_PYCUSTOM_NUMPY_DL_DIR)/$(HOST_PYCUSTOM_NUMPY_SOURCE)
	mv $(@D)/numpy-$(HOST_PYCUSTOM_NUMPY_VERSION)/* $(@D)
	$(RM) -r $(@D)/numpy-$(HOST_PYCUSTOM_NUMPY_VERSION)
endef

PYCUSTOM_NUMPY_DEPENDENCIES = host-python-cython
HOST_PYCUSTOM_NUMPY_DEPENDENCIES = host-python-cython

ifeq ($(BR2_PACKAGE_LAPACK),y)
PYCUSTOM_NUMPY_DEPENDENCIES += lapack
else
PYCUSTOM_NUMPY_ENV += BLAS=None LAPACK=None
endif

ifeq ($(BR2_TOOLCHAIN_HAS_FORTRAN),y)
PYCUSTOM_NUMPY_BUILD_OPTS = --fcompiler=gnu95
PYCUSTOM_NUMPY_ENV += F90=$(TARGET_FC)
else
PYCUSTOM_NUMPY_BUILD_OPTS = --fcompiler=None
endif

define PYCUSTOM_NUMPY_CONFIGURE_CMDS
        -rm -f $(@D)/site.cfg
        echo "[DEFAULT]" >> $(@D)/site.cfg
        echo "library_dirs = $(STAGING_DIR)/usr/lib" >> $(@D)/site.cfg
        echo "include_dirs = $(STAGING_DIR)/usr/include" >> $(@D)/site.cfg
endef

# Fixup the npymath.ini prefix path with actual target staging area where
# numpy core was built. Without this, target builds using numpy distutils
# extensions like python-scipy, python-numba cannot find -lnpymath since
# it uses host libraries (like libnpymath.a).
# So, the numpy distutils extension packages would explicitly link this
# config path for their package environment.
define PYCUSTOM_NUMPY_FIXUP_NPY_PKG_CONFIG_FILES
        $(SED) '/^pkgdir=/d;/^prefix=/i pkgdir=$(PYTHON3_PATH)/site-packages/numpy/core' \
                $(PYTHON3_PATH)/site-packages/numpy/core/lib/npy-pkg-config/npymath.ini
endef
PYCUSTOM_NUMPY_POST_INSTALL_STAGING_HOOKS += PYCUSTOM_NUMPY_FIXUP_NPY_PKG_CONFIG_FILES

# Some package may include few headers from NumPy, so let's install it
# in the staging area.
PYCUSTOM_NUMPY_INSTALL_STAGING = YES
NPY_DISABLE_SVML=1

$(eval $(python-package))
$(eval $(host-python-package))
