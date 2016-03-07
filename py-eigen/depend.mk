# robotpkg depend.mk for:	wip/py-eigen
# Created:			Olivier Stasse, Feb 3rd 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
EIGENPY_DEPEND_MK:=	${EIGENPY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		eigenpy
endif

ifeq (+,$(EIGENPY_DEPEND_MK)) # -------------------------------------------

PREFER.eigenpy?=	robotpkg

SYSTEM_SEARCH.eigenpy=\
	'lib/pkgconfig/eigenpy.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		eigenpy
DEPEND_ABI.eigenpy?=	eigenpy>=1.3.0
DEPEND_DIR.eigenpy?=	../../wip/py-eigen

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../math/eigen3/depend.mk

endif # EIGENPY_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
