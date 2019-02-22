# robotpkg depend.mk for:	wip/sot-core-v3
# Created:			Rohan Budhiraja on Thu, 17 Dec 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_CORE_V3_DEPEND_MK:=	${SOT_CORE_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-core-v3
endif

ifeq (+,$(SOT_CORE_V3_DEPEND_MK)) # -------------------------------------------

PREFER.sot-core-v3?=	robotpkg

SYSTEM_SEARCH.sot-core-v3=\
	include/sot/core/device.hh				\
	lib/libsot-core.so					\
	'lib/pkgconfig/sot-core.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-core-v3

DEPEND_ABI.sot-core-v3?=	sot-core-v3>=4.0.0<5.0.0
DEPEND_DIR.sot-core-v3?=	../../wip/sot-core-v3

endif # SOT_CORE_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
