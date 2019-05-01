# robotpkg depend.mk for:	wip/sot-tiago
# Created:			Olivier Stasse on 1st May 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_TIAGO_DEPEND_MK:=	${SOT_TIAGO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-tiago
endif

ifeq (+,$(SOT_TIAGO_DEPEND_MK)) # -------------------------------------------

PREFER.sot-tiago?=	robotpkg

SYSTEM_SEARCH.sot-tiago=\
	include/sot-tiago/config.hh				\
	'lib/pkgconfig/sot-tiago.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-tiago

DEPEND_ABI.sot-tiago?=	sot-tiago>=0.0.1
DEPEND_DIR.sot-tiago?=	../../wip/sot-tiago

endif # SOT_TIAGO_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
