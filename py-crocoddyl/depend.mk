# robotpkg depend.mk for:	wip/py-crocoddyl
# Created:			Guilhem Saurel on Wed, 4 Apr 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_CROCODDYL_DEPEND_MK:=	${PY_CROCODDYL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-crocoddyl
endif

ifeq (+,$(PY_CROCODDYL_DEPEND_MK)) # ------------------------------------------

PREFER.py-crocoddyl?=	robotpkg

SYSTEM_SEARCH.py-crocoddyl=\
  'include/crocoddyl/config.hh:/CROCODDYL_VERSION/s/[^0-9.]//gp' \
  'lib/pkgconfig/crocoddyl.pc:/Version/s/[^0-9.]//gp' \
  '${PYTHON_SYSLIBSEARCH}/crocoddyl/__init__.py'

DEPEND_USE+=				py-crocoddyl

DEPEND_ABI.py-crocoddyl?=		${PKGTAG.python-}crocoddyl>=0.9.0
DEPEND_DIR.py-crocoddyl?=		../../wip/py-crocoddyl

include ../../mk/sysdep/python.mk

endif # PY_CROCODDYL_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
