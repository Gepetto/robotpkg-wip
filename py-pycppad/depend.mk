# robotpkg depend.mk for:	math/pycppad
# Created:			Guilhem Saurel on Fri, 20 Aug 2021
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_PYCPPAD_DEPEND_MK:=	${PY_PYCPPAD_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-pycppad
endif

ifeq (+,$(PY_PYCPPAD_DEPEND_MK)) # -----------------------------------------

PREFER.py-pycppad?=	robotpkg

SYSTEM_SEARCH.py-pycppad=\
  'include/pycppad/config.hpp:/PYCPPAD_VERSION /s/[^0-9.]//gp'			\
  'lib/libpycppad.so'								\
  '${PYTHON_SYSLIBSEARCH}/pycppad/*.so'						\
  '${PYTHON_SYSLIBSEARCH}/pycppad/__init__.py'					\
  'lib/cmake/pycppad/pycppadConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pycppad.pc:/Version/s/[^0-9.]//gp'				\
  'share/pycppad/package.xml:/<version>/s/[^0-9.]//gp'

DEPEND_USE+=		py-pycppad
DEPEND_ABI.py-pycppad?=	${PKGTAG.python-}pycppad>=2.2.0
DEPEND_DIR.py-pycppad?=	../../math/py-pycppad

include ../../mk/sysdep/python.mk

endif # PY_PYCPPAD_DEPEND_MK -----------------------------------------------

# This package leaks dependencies on boost-python and eigen, numpy ...
# XXX Currently, boost-headers does not allow to specify specific headers to be
# searched, like for boost-libs, so hope for the best with boost-python
# headers.
USE_BOOST_LIBS+=	python

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/py-numpy.mk

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
