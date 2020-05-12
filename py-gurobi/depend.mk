# robotpkg depend.mk for:	optimization/py38-gurobi
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_GUROBI_DEPEND_MK:=		${PY_GUROBI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-gurobi
endif

ifeq (+,$(PY_GUROBI_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-gurobi?=		robotpkg

DEPEND_USE+=			py-gurobi

DEPEND_ABI.py-gurobi?=		${PKGTAG.python-}gurobi>=9.0.2
DEPEND_DIR.py-gurobi?=		../../wip/py-gurobi

SYSTEM_SEARCH.py-gurobi=			\
  'lib/libgurobi90.so'				\
  '${PYTHON_SYSLIBSEARCH}/gurobipy/__init__.py'

endif # PY_GUROBI_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
