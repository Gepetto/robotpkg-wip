# robotpkg depend.mk for:	wip/py-quadprog
# Created:			Guilhem Saurel on Thu, 04 Jul 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_QUADPROG_DEPEND_MK:=	${PY_QUADPROG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-quadprog
endif

ifeq (+,$(PY_QUADPROG_DEPEND_MK)) # --------------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-quadprog?=	robotpkg

DEPEND_USE+=		py-quadprog

DEPEND_ABI.py-quadprog?=	${PKGTAG.python-}quadprog>=0.1.6
DEPEND_DIR.py-quadprog?=	../../wip/py-quadprog

SYSTEM_SEARCH.py-quadprog=\
  '${PYTHON_SITELIB}/quadprog${PYTHON_EXT_SUFFIX}'

endif # PY_QUADPROG_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
