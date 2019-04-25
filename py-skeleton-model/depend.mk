# robotpkg depend.mk for:	wip/py-skeleton-model
# Created:			Guilhem Saurel on Fri, 19 Apr 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SKELETON_MODEL_DEPEND_MK:=	${PY_SKELETON_MODEL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-skeleton-model
endif

ifeq (+,$(PY_SKELETON_MODEL_DEPEND_MK)) # ------------------------------------------

PREFER.py-skeleton-model?=	robotpkg

SYSTEM_SEARCH.py-skeleton-model=\
  '${PYTHON_SYSLIBSEARCH}/skeleton_model/__init__.py'

DEPEND_USE+=			py-skeleton-model

DEPEND_ABI.py-skeleton-model?=		${PKGTAG.python-}skeleton-model>=1.0.1
DEPEND_DIR.py-skeleton-model?=		../../wip/py-skeleton-model

include ../../mk/sysdep/python.mk

endif # PY_SKELETON_MODEL_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
