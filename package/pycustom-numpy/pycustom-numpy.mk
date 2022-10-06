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

$(eval $(python-package))
