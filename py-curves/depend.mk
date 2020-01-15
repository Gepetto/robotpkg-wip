# robotpkg depend.mk for:	wip/py-curves
# Created:			Guilhem Saurel on Wed, 17 Apr 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_CURVES_DEPEND_MK:=	${PY_CURVES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-curves
endif

ifeq (+,$(PY_CURVES_DEPEND_MK)) # --------------------------------------

PREFER.py-curves?=	robotpkg

DEPEND_USE+=		py-curves

DEPEND_ABI.py-curves?=	${PKGTAG.python-}curves>=0.3.1
DEPEND_DIR.py-curves?=	../../wip/py-py-curves

SYSTEM_SEARCH.py-curves=\
	'${PYTHON_SYSLIBSEARCH}/curves/curves.so'

include ../../mk/sysdep/python.mk

endif # PY_CURVES_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
