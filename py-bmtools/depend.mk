# robotpkg depend.mk for:	wip/py-bmtools
# Created:			Guilhem Saurel on Fri, 19 Apr 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_BMTOOLS_DEPEND_MK:=	${PY_BMTOOLS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-bmtools
endif

ifeq (+,$(PY_BMTOOLS_DEPEND_MK)) # ------------------------------------------

PREFER.py-bmtools?=	robotpkg

SYSTEM_SEARCH.py-bmtools=\
  '${PYTHON_SYSLIBSEARCH}/bmtools/__init__.py'

DEPEND_USE+=			py-bmtools

DEPEND_ABI.py-bmtools?=		${PKGTAG.python-}bmtools>=1.0
DEPEND_DIR.py-bmtools?=		../../wip/py-bmtools

include ../../mk/sysdep/python.mk

endif # PY_BMTOOLS_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
