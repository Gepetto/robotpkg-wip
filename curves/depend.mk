# robotpkg depend.mk for:	wip/curves
# Created:			Guilhem Saurel on Wed, 15 Jan 2020
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
CURVES_DEPEND_MK:=	${CURVES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		curves
endif

ifeq (+,$(CURVES_DEPEND_MK)) # --------------------------------------

PREFER.curves?=	robotpkg

DEPEND_USE+=		curves

DEPEND_ABI.curves?=	curves>=0.3.1
DEPEND_DIR.curves?=	../../wip/curves

SYSTEM_SEARCH.curves=\
	include/curves/config.hh				\
	'lib/pkgconfig/curves.pc:/Version/s/[^0-9.]//gp'

endif # CURVES_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
