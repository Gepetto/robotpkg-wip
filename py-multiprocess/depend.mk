# robotpkg depend.mk for:	wip/py38-multiprocess
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_MULTIPROCESS_DEPEND_MK:=	${PY_MULTIPROCESS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-multiprocess
endif

ifeq (+,$(PY_MULTIPROCESS_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-multiprocess?=	robotpkg

DEPEND_USE+=			py-multiprocess

DEPEND_ABI.py-multiprocess?=	${PKGTAG.python-}multiprocess>=0.6.1
DEPEND_DIR.py-multiprocess?=	../../wip/py-multiprocess

SYSTEM_SEARCH.py-multiprocess=	\
  '${PYTHON_SYSLIBSEARCH}/multiprocess/__init__.py'

endif # PY_MULTIPROCESS_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
