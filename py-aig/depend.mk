# robotpkg depend.mk for:	wip/py38-aig
# Created:			Guilhem Saurel on Mon, 12 Dec 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_AIG_DEPEND_MK:=		${PY_AIG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-aig
endif

ifeq (+,$(PY_AIG_DEPEND_MK)) # ------------------------------------------

PREFER.py-aig?=	robotpkg

SYSTEM_SEARCH.py-aig=							\
  '${PYTHON_SYSLIBSEARCH}/aig/aig.*.so'					\
  '${PYTHON_SYSLIBSEARCH}/aig/__init__.py'

DEPEND_USE+=			py-aig

DEPEND_ABI.py-aig?=		${PKGTAG.python-}aig>=1.0.0
DEPEND_DIR.py-aig?=		../../wip/py-aig

endif # PY_AIG_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
