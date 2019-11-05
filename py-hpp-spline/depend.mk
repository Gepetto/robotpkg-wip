# robotpkg depend.mk for:	wip/py-hpp-spline
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_SPLINE_DEPEND_MK:=	${PY_HPP_SPLINE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-spline
endif

ifeq (+,$(PY_HPP_SPLINE_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-spline?=	robotpkg

DEPEND_USE+=		py-hpp-spline

DEPEND_ABI.py-hpp-spline?=	${PKGTAG.python-}hpp-spline>=4.5.0
DEPEND_DIR.py-hpp-spline?=	../../wip/py-hpp-spline

SYSTEM_SEARCH.py-hpp-spline=\
	include/hpp/spline/config.hh	\
	'lib/pkgconfig/hpp-spline.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_SPLINE_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
