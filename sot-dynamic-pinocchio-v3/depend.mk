# robotpkg Makefile for:	wip/sot-dynamic-pinocchio
# Created:			Rohan Budhiraja on Fri, 8 Apr 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_DYNAMIC_PINOCCHIO_V3_DEPEND_MK:=	${SOT_DYNAMIC_PINOCCHIO_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-dynamic-pinocchio-v3
endif

ifeq (+,$(SOT_DYNAMIC_PINOCCHIO_V3_DEPEND_MK)) # --------------------------------------

PREFER.sot-dynamic-pinocchio-v3?=	robotpkg

SYSTEM_SEARCH.sot-dynamic-pinocchio-v3=\
	include/sot-dynamic-pinocchio/dynamic-pinocchio.h \
	'lib/pkgconfig/sot-dynamic-pinocchio.pc:Version/s/[^0-9.]//gp' 

DEPEND_USE+=		sot-dynamic-pinocchio-v3

DEPEND_ABI.sot-dynamic-pinocchio-v3?=	sot-dynamic-pinocchio-v3>=3.1.1
DEPEND_DIR.sot-dynamic-pinocchio-v3?=	../../wip/sot-dynamic-pinocchio-v3

endif # SOT_DYNAMIC_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
