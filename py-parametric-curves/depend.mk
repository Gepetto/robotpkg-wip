# robotpkg depend.mk for:	wip/py-parametric-curves
# Created:			Guilhem Saurel on Fri 25 May 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_PARAMETRIC_CURVES_DEPEND_MK:=	${PY_PARAMETRIC_CURVES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-parametric-curves
endif

ifeq (+,$(PY_PARAMETRIC_CURVES_DEPEND_MK)) # -------------------------------------------

PREFER.py-parametric-curves?=	robotpkg

SYSTEM_SEARCH.py-parametric-curves=\
	'${PYTHON_SYSLIBSEARCH}/parametric_curves/__init__.py'

DEPEND_USE+=		py-parametric-curves

DEPEND_ABI.py-parametric-curves?=	${PKGTAG.python-}parametric-curves>=1.0.0
DEPEND_DIR.py-parametric-curves?=	../../wip/py-parametric-curves

include ../../mk/sysdep/python.mk

endif # PY_PARAMETRIC_CURVES_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
