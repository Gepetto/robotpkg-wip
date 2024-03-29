# robotpkg depend.mk for:	wip/py310-flex-joints
# Created:			Guilhem Saurel on Fri, 24 Jun 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_FLEX_JOINTS_DEPEND_MK:=	${PY_FLEX_JOINTS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-flex-joints
endif

ifeq (+,$(FLEX_JOINTS_DEPEND_MK)) # ------------------------------------------

PREFER.py-flex-joints?=	robotpkg

SYSTEM_SEARCH.py-flex-joints=								\
  '${PYTHON_SYSLIBSEARCH}/flex_joints/flex_joints.{,*.}so'				\
  '${PYTHON_SYSLIBSEARCH}/flex_joints/__init__.py'

DEPEND_USE+=			py-flex-joints

DEPEND_ABI.py-flex-joints?=	${PKGTAG.python-}flex-joints>=1.0.0
DEPEND_DIR.py-flex-joints?=	../../wip/py-flex-joints

endif # PY_FLEX_JOINTS_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
