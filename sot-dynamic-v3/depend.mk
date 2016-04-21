# robotpkg depend.mk for:	motion/sot-dynamic
# Created:			Florent Lamiraux on Fri, 8 Jul 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_DYNAMIC_V3_DEPEND_MK:=	${SOT_DYNAMIC_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-dynamic-v3
endif

ifeq (+,$(SOT_DYNAMIC_V3_DEPEND_MK)) # --------------------------------------

PREFER.sot-dynamic-v3?=	robotpkg

SYSTEM_SEARCH.sot-dynamic-v3=\
	include/sot-dynamic/dynamic.h \
	'lib/pkgconfig/sot-dynamic.pc:Version/s/[^0-9.]//gp' \
	lib/plugin/dynamic.so

DEPEND_USE+=		sot-dynamic-v3

DEPEND_ABI.sot-dynamic-v3?=	sot-dynamic-v3>=3.0
DEPEND_DIR.sot-dynamic-v3?=	../../wip/sot-dynamic-v3

endif # SOT_DYNAMIC_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
