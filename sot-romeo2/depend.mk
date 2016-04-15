# robotpkg depend.mk for:	wip/sot-romeo2
# Created:			Rohan Budhiraja on Wed, 14 Apr 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_ROMEO_DEPEND_MK:=	${SOT_ROMEO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-romeo
endif

ifeq (+,$(SOT_ROMEO_DEPEND_MK)) # -------------------------------------------

PREFER.sot-romeo?=	robotpkg

SYSTEM_SEARCH.sot-romeo=\
	include/sot-romeo/config.h				\
	lib/python2.7/site-packages/dynamic_graph/sot/romeo/robot.py					\
	'lib/pkgconfig/sot-romeo.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-romeo

DEPEND_ABI.sot-romeo?=	sot-romeo>=2.0.0
DEPEND_DIR.sot-romeo?=	../../wip/sot-romeo2

endif # SOT_ROMEO_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
