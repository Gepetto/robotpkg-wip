# robotpkg depend.mk for:	wip/pinocchio
# Created:			Olivier Stasse, Feb 4th 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PINOCCHIO_DEPEND_MK:=	${PINOCCHIO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		pinocchio
endif

ifeq (+,$(PINOCCHIO_DEPEND_MK)) # -------------------------------------------

PREFER.pinocchio?=	robotpkg

SYSTEM_SEARCH.pinocchio=\
	'lib/pkgconfig/pinocchio.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		pinocchio

DEPEND_ABI.pinocchio?=	pinocchio>1.0.2
DEPEND_DIR.pinocchio?=	../../wip/pinocchio

include ../../mk/sysdep/python.mk

endif # PINOCCHIO_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
