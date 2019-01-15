# robotpkg depend.mk for:	optimization/py-qpoases
# Created:			Guilhem Saurel on Wed, 15 jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_QPOASES_DEPEND_MK:=	${PY_QPOASES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-qpoases
endif

ifeq (+,$(PY_QPOASES_DEPEND_MK)) # --------------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-qpoases?=	robotpkg

DEPEND_USE+=		py-qpoases

DEPEND_ABI.py-qpoases?=	${PKGTAG.python-}-qpoases>=3.2
DEPEND_DIR.py-qpoases?=	../../wip/py-qpoases

SYSTEM_SEARCH.py-qpoases=\
  '${PYTHON_SITELIB}/qpoases${PYTHON_SOABI}.so'

endif # PY_QPOASES_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
