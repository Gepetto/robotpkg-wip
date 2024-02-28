# robotpkg depend.mk for:	simulation/py310-bullet3
# Created:			Guilhem Saurel on Mon, 23 May 2022
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_BULLET3_DEPEND_MK:=	${PY_BULLET3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-bullet3
endif

ifeq (+,$(PY_BULLET3_DEPEND_MK)) # -----------------------------------------

PREFER.py-bullet3?=	robotpkg

SYSTEM_SEARCH.py-bullet3=\
  'include/bullet/Bullet3Common/b3HashMap.h'				\
  'lib/libBullet3Common.so'						\
  '${PYTHON_SYSLIBSEARCH}/pybullet.{,*.}so'					\
  'lib/cmake/bullet/BulletConfig.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/bullet.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		py-bullet3
DEPEND_ABI.py-bullet3?=	${PKGTAG.python-}bullet3>=3.24
DEPEND_DIR.py-bullet3?=	../../wip/py-bullet3

include ../../mk/sysdep/python.mk

endif # PY_BULLET3_DEPEND_MK -----------------------------------------------

# This package leaks dependencies on boost-python and eigen, numpy ...
# XXX Currently, boost-headers does not allow to specify specific headers to be
# searched, like for boost-libs, so hope for the best with boost-python
# headers.
USE_BOOST_LIBS+=	python

include ../../math/eigen3/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/sysdep/py-numpy.mk

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
