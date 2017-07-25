# robotpkg depend.mk for:	wip/sot-hrp2-v2
# Created:			Rohan Budhiraja on Thu 14th Apr 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_HRP2_V3_DEPEND_MK:=	${SOT_HRP2_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-hrp2-v3
endif

ifeq (+,$(SOT_HRP2_V3_DEPEND_MK)) # -------------------------------------------

PREFER.sot-hrp2-v3?=	robotpkg

SYSTEM_SEARCH.sot-hrp2-v3=\
	include/sot-hrp2/config.hh				\
	'lib/pkgconfig/sot-hrp2.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-hrp2-v3

DEPEND_ABI.sot-hrp2-v3?=	sot-hrp2-v3>=2.0.0
DEPEND_DIR.sot-hrp2-v3?=	../../wip/sot-hrp2-v3

endif # SOT_HRP2_V3_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
