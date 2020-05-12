# robotpkg depend.mk for:	optimization/py38-ecos
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_ECOS_DEPEND_MK:=		${PY_ecos_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-ecos
endif

ifeq (+,$(PY_ECOS_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-ecos?=		robotpkg

DEPEND_USE+=			py-ecos

DEPEND_ABI.py-ecos?=		${PKGTAG.python-}ecos>=2.0.7
DEPEND_DIR.py-ecos?=		../../wip/py-ecos

SYSTEM_SEARCH.py-ecos=	\
  '${PYTHON_SYSLIBSEARCH}/ecos/__init__.py'

endif # PY_ECOS_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
