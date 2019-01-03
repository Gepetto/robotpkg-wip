# robotpkg depend.mk for:	wip/hpp-spline
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_SPLINE_DEPEND_MK:=	${HPP_SPLINE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-spline
endif

ifeq (+,$(HPP_SPLINE_DEPEND_MK)) # --------------------------------------

PREFER.hpp-spline?=	robotpkg

DEPEND_USE+=		hpp-spline

DEPEND_ABI.hpp-spline?=	hpp-spline>=4.2.0
DEPEND_DIR.hpp-spline?=	../../wip/hpp-spline

SYSTEM_SEARCH.hpp-spline=\
	include/hpp/spline/config.hh	\
	'lib/pkgconfig/hpp-spline.pc:/Version/s/[^0-9.]//gp'

endif # HPP_SPLINE_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
