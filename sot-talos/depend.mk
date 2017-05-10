# robotpkg depend.mk for:	wip/sot-talos
# Created:			Olivier Stasse on Thu 10th May 2017
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_TALOS_DEPEND_MK:=	${SOT_TALOS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-talos
endif

ifeq (+,$(SOT_TALOS_DEPEND_MK)) # -------------------------------------------

PREFER.sot-talos?=	robotpkg

SYSTEM_SEARCH.sot-talos=\
	include/sot-talos/config.hh				\
	'lib/pkgconfig/sot-talos.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-talos

DEPEND_ABI.sot-talos?=	sot-talos>=0.0.1
DEPEND_DIR.sot-talos?=	../../wip/sot-talos

endif # SOT_TALOS_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
