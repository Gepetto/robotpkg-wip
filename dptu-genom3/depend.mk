# robotpkg depend.mk for:	wip/dptu-genom3
# Created:			François Magimel on Wed, 12 Aug 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
DPTU_GENOM3_DEPEND_MK:=	${DPTU_GENOM3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		dptu-genom3
endif

ifeq (+,$(DPTU_GENOM3_DEPEND_MK)) # --------------------------------------------

PREFER.dptu-genom3?=	robotpkg

DEPEND_USE+=		dptu-genom3

DEPEND_ABI.dptu-genom3?=	dptu-genom3>=0.2
DEPEND_DIR.dptu-genom3?=	../../wip/dptu-genom3

SYSTEM_SEARCH.dptu-genom3=\
	include/dptu/dptuStruct.h		\
	lib/pkgconfig/dptu-genom3.pc

include ../../architecture/genom3/depend.mk

endif # DPTU_GENOM3_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
