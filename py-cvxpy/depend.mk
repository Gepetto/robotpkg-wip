# robotpkg depend.mk for:	optimization/py38-cvxpy
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_CVXPY_DEPEND_MK:=		${PY_CVXPY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-cvxpy
endif

ifeq (+,$(PY_CVXPY_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-cvxpy?=		robotpkg

DEPEND_USE+=			py-cvxpy

DEPEND_ABI.py-cvxpy?=		${PKGTAG.python-}cvxpy>=1.0.31
DEPEND_DIR.py-cvxpy?=		../../wip/py-cvxpy

SYSTEM_SEARCH.py-cvxpy=	\
  '${PYTHON_SYSLIBSEARCH}/cvxpy*.egg'

endif # PY_CVXPY_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
