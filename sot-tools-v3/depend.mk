# robotpkg depend.mk for:	wip/sot-tools-v3
# Created:			Guilhem Saurel on Wed, 1 Aug 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
SOT_TOOLS_V3_DEPEND_MK:=	${SOT_TOOLS_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			sot-tools-v3
endif

ifeq (+,$(SOT_TOOLS_V3_DEPEND_MK)) # -----------------------------------

PREFER.sot-tools-v3?=	robotpkg

DEPEND_USE+=			sot-tools-v3
DEPEND_ABI.sot-tools-v3?=	sot-tools-v3>=2.0
DEPEND_DIR.sot-tools-v3?=	../../wip/sot-tools-v3

SYSTEM_SEARCH.sot-tools-v3=\
	include/sot/tools/config.hh				\
	'lib/pkgconfig/sot-tools.pc:/Version/s/[^0-9.]//gp'

endif # SOT_TOOLS_DEPEND_MK -----------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
