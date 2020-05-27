# robotpkg depend.mk for:	wip/py38-qt5-PythonQt
# Created:			Guilhem Saurel on Wed, 27 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_QT_PYTHONQT_DEPEND_MK:=	${PY_QT_PYTHONQT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-qt-pythonqt
endif

ifeq (+,$(PY_QT_PYTHONQT_DEPEND_MK)) # ------------------------------------------

PREFER.py-qt-pythonqt?=		robotpkg

SYSTEM_SEARCH.py-qt-pythonqt=				\
  'include/PythonQt/PythonQt.h'				\
  'lib/libPythonQt-Qt5-Python${PYTHON_VERSION}.so'

DEPEND_USE+=			py-qt-pythonqt

DEPEND_ABI.py-qt-pythonqt?=	${PKGTAG.python}-${PKGTAG.qt}-PythonQt>=3.2
DEPEND_DIR.py-qt-pythonqt?=	../../wip/py-qt-pythonqt

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/qt.mk

endif # PY_QT_PYTHONQT_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
