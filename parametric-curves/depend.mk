# robotpkg depend.mk for:	wip/parametric-curves
# Created:			Olivier Stasse on Thu 5th Jan 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PARAMETRIC_CURVES_DEPEND_MK:=	${PARAMETRIC_CURVES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		parametric-curves
endif

ifeq (+,$(PARAMETRIC_CURVES_DEPEND_MK)) # -------------------------------------------

PREFER.parametric-curves?=	robotpkg

SYSTEM_SEARCH.parametric-curves=\
	include/parametric-curves/config.hh				\
	'lib/pkgconfig/parametric-curves.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		parametric-curves

DEPEND_ABI.parametric-curves?=	parametric-curves>=1.0.0
DEPEND_DIR.parametric-curves?=	../../wip/parametric-curves

endif # PARAMETRIC_CURVES_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
