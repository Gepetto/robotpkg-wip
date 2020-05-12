# robotpkg depend.mk for:	optimization/py38-pycddlib
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_PYCDDLIB_DEPEND_MK:=		${PY_PYCDDLIB_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-pycddlib
endif

ifeq (+,$(PY_PYCDDLIB_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-pycddlib?=		robotpkg

DEPEND_USE+=			py-pycddlib

DEPEND_ABI.py-pycddlib?=	${PKGTAG.python-}pycddlib>=2.1.1
DEPEND_DIR.py-pycddlib?=	../../wip/py-pycddlib

SYSTEM_SEARCH.py-pycddlib=	\
  '${PYTHON_SYSLIBSEARCH}/cdd*.so'

endif # PY_PYCDDLIB_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
