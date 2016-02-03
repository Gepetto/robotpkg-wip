# robotpkg depend.mk for:	wip/py-eigen
# Created:			Olivier Stasse, Feb 3rd 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_EIGEN_DEPEND_MK:=	${PY_EIGEN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-eigen
endif

ifeq (+,$(PY_EIGEN_DEPEND_MK)) # -------------------------------------------

PREFER.py-eigen?=	robotpkg

SYSTEM_SEARCH.py-eigen=\
	'lib/pkgconfig/eigenpy.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		py-eigen

DEPEND_ABI.py-eigen?=	eigen3
DEPEND_DIR.py-eigen?=	../../wip/py-eigen

include ../../mk/sysdep/python.mk

endif # PY_EIGEN_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
