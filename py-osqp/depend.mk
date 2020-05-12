# robotpkg depend.mk for:	optimization/py38-osqp
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_OSQP_DEPEND_MK:=		${PY_OSQP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-osqp
endif

ifeq (+,$(PY_OSQP_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-osqp?=		robotpkg

DEPEND_USE+=			py-osqp

DEPEND_ABI.py-osqp?=		${PKGTAG.python-}osqp>=0.6.1
DEPEND_DIR.py-osqp?=		../../wip/py-osqp

SYSTEM_SEARCH.py-osqp=		\
  '${PYTHON_SYSLIBSEARCH}/osqp/__init__.py'

endif # PY_OSQP_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
