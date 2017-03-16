# robotpkg depend.mk for:	wip/sot-dyninv-v3
# Created:			Rohan Budhiraja on Thu, 08 Sep 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_DYNINV_V3_DEPEND_MK:=	${SOT_DYNINV_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-dyninv-v3
endif

ifeq (+,$(SOT_DYNINV_v3_DEPEND_MK)) # -------------------------------------------

PREFER.sot-dyninv-v3?=	robotpkg

SYSTEM_SEARCH.sot-dyninv-v3=\
	include/sot-dyninv/config.hh				\
	'lib/pkgconfig/sot-dyninv.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-dyninv-v3

DEPEND_ABI.sot-dyninv?=	sot-dyninv-v3>=3.0.0
DEPEND_DIR.sot-dyninv?=	../../wip/sot-dyninv-v3

endif # SOT_DYNINV_v3_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
