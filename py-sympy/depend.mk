# robotpkg depend.mk for:	math/sympy
# Created:			Guilhem Saurel on Thu, 11 Aug 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_SYMPY_DEPEND_MK:=		${PY_SYMPY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-sympy
endif

ifeq (+,$(SYMPY_DEPEND_MK)) # ------------------------------------------

PREFER.py-sympy?=		system

SYSTEM_SEARCH.py-sympy=\
  '${PYTHON_SYSLIBSEARCH}/sympy/release.py:/__version__/s/[^0-9.]//gp'

DEPEND_USE+=			py-sympy

DEPEND_ABI.py-sympy?=		${PKGTAG.python-}sympy>=1.1.1
DEPEND_DIR.py-sympy?=		../../wip/py-sympy

SYSTEM_PKG.Arch.py-sympy=	python-sympy
SYSTEM_PKG.Debian.py-sympy=	python$(subst 2,,${PYTHON_MAJOR})-sympy

endif # PY_SYMPY_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
