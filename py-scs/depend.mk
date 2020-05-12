# robotpkg depend.mk for:	optimization/py38-scs
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_SCS_DEPEND_MK:=		${PY_SCS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-scs
endif

ifeq (+,$(PY_SCS_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-scs?=		robotpkg

DEPEND_USE+=			py-scs

DEPEND_ABI.py-scs?=		${PKGTAG.python-}scs>=2.1.2
DEPEND_DIR.py-scs?=		../../wip/py-scs

SYSTEM_SEARCH.py-scs=	\
  '${PYTHON_SYSLIBSEARCH}/scs/__init__.py'

endif # PY_SCS_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
