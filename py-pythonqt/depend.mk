# robotpkg depend.mk for:	wip/py38-PythonQt
# Created:			Guilhem Saurel on Wed, 27 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_PYTHONQT_DEPEND_MK:=	${PY_PYTHONQT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-pythonqt
endif

ifeq (+,$(PY_PYTHONQT_DEPEND_MK)) # ------------------------------------------

PREFER.py-pythonqt?=		robotpkg

SYSTEM_SEARCH.py-pythonqt=				\
  'include/PythonQt/PythonQt.h'				\
  'lib/libPythonQt-Qt5-Python${PYTHON_VERSION}.so'

DEPEND_USE+=			py-pythonqt

DEPEND_ABI.py-pythonqt?=	${PKGTAG.python}-PythonQt>=3.2
DEPEND_DIR.py-pythonqt?=	../../wip/py-pythonqt

include ../../mk/sysdep/python.mk

endif # PY_PYTHONQT_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
