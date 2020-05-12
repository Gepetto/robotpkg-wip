# robotpkg depend.mk for:	wip/py38-dill
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_DILL_DEPEND_MK:=		${PY_DILL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-dill
endif

ifeq (+,$(PY_DILL_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-dill?=		robotpkg

DEPEND_USE+=			py-dill

DEPEND_ABI.py-dill?=		${PKGTAG.python-}dill>=0.3.1.1
DEPEND_DIR.py-dill?=		../../wip/py-dill

SYSTEM_SEARCH.py-dill=		\
  '${PYTHON_SYSLIBSEARCH}/dill/__init__.py'

endif # PY_DILL_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
