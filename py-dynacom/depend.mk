# robotpkg depend.mk for:	wip/py38-dynacom
# Created:			Guilhem Saurel on Mon, 12 Dec 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_DYNACOM_DEPEND_MK:=		${PY_DYNACOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-dynacom
endif

ifeq (+,$(PY_DYNACOM_DEPEND_MK)) # ------------------------------------------

PREFER.py-dynacom?=		robotpkg

SYSTEM_SEARCH.py-dynacom=							\
  '${PYTHON_SYSLIBSEARCH}/dynacom/dynacom.*.so'					\
  '${PYTHON_SYSLIBSEARCH}/dynacom/__init__.py'

DEPEND_USE+=			py-dynacom

DEPEND_ABI.py-dynacom?=		${PKGTAG.python-}dynacom>=1.0.0
DEPEND_DIR.py-dynacom?=		../../wip/py-dynacom

endif # PY_DYNACOM_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
