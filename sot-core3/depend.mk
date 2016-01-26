# robotpkg depend.mk for:	wip/sot-core
# Created:			Rohan Budhiraja on Thu, 17 Dec 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_CORE_DEPEND_MK:=	${SOT_CORE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-core
endif

ifeq (+,$(SOT_CORE_DEPEND_MK)) # -------------------------------------------

PREFER.sot-core?=	robotpkg

SYSTEM_SEARCH.sot-core=\
	include/sot/core/device.hh				\
	lib/libsot-core.so					\
	'lib/pkgconfig/sot-core.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-core

DEPEND_ABI.sot-core?=	sot-core>=3.0.0
DEPEND_DIR.sot-core?=	../../wip/sot-core3

endif # SOT_CORE_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
