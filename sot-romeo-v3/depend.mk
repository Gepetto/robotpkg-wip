# robotpkg depend.mk for:	wip/sot-romeo2
# Created:			Rohan Budhiraja on Wed, 14 Apr 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_ROMEO_V3_DEPEND_MK:=	${SOT_ROMEO_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-romeo-v3
endif

ifeq (+,$(SOT_ROMEO_V3_DEPEND_MK)) # -------------------------------------------

PREFER.sot-romeo-v3?=	robotpkg

SYSTEM_SEARCH.sot-romeo-v3=\
	include/sot-romeo/config.h				\
	lib/python2.7/site-packages/dynamic_graph/sot/romeo/robot.py					\
	'lib/pkgconfig/sot-romeo.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-romeo-v3

DEPEND_ABI.sot-romeo-v3?=	sot-romeo-v3>=2.0.0
DEPEND_DIR.sot-romeo-v3?=	../../wip/sot-romeo-v3

endif # SOT_ROMEO_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
