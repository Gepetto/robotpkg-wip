# robotpkg depend.mk for:	wip/py-qt-gepetto-pythonqt
# Created:			Guilhem Saurel on Mon, 28 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_QT_GEPETTO_PYTHONQT_DEPEND_MK:=	${PY_QT_GEPETTO_PYTHONQT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-qt-gepetto-pythonqt
endif

ifeq (+,$(PY_QT_GEPETTO_PYTHONQT_DEPEND_MK)) # ------------------------------------------

PREFER.py-qt-gepetto-pythonqt?=	robotpkg

SYSTEM_SEARCH.py-qt-gepetto-pythonqt=\
  'include/PythonQt/PythonQt.h'	\
  '${PYTHON_SYSLIBSEARCH}/pythonqt/__init__.py'

DEPEND_USE+=		py-qt-gepetto-pythonqt

DEPEND_ABI.py-qt-gepetto-pythonqt?=	py-qt-gepetto-pythonqt>=0.0.1
DEPEND_DIR.py-qt-gepetto-pythonqt?=	../../wip/py-qt-gepetto-pythonqt

endif # PY_QT_GEPETTO_PYTHONQT_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
