# robotpkg depend.mk for:	optimization/py38-quadruped-walkgen
# Created:			Guilhem Saurel on Fri, 16 Dec 2022
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
PY_QUADRUPED_WALKGEN_DEPEND_MK:=	${PY_QUADRUPED_WALKGEN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				py-quadruped-walkgen
endif

ifeq (+,$(PY_QUADRUPED_WALKGEN_DEPEND_MK)) # ---------------------------------------

PREFER.py-quadruped-walkgen?=		robotpkg

DEPEND_USE+=				py-quadruped-walkgen

DEPEND_ABI.py-quadruped-walkgen?=	${PKGTAG.python-}quadruped-walkgen>=1.1.0
DEPEND_DIR.py-quadruped-walkgen?=	../../optimization/py-quadruped-walkgen

SYSTEM_SEARCH.py-quadruped-walkgen=\
  'include/quadruped-walkgen/config.hh:/QUADRUPED_WALKGEN_VERSION /s/[^0-9.]//gp'	\
  'lib/cmake/quadruped-walkgen/quadruped-walkgenConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'\
  'lib/pkgconfig/quadruped-walkgen.pc:/Version/s/[^0-9.]//gp'			\
  '${PYTHON_SYSLIBSEARCH}/quadruped-walkgen/__init__.py'

include ../../mk/sysdep/python.mk

endif # PY_QUADRUPED_WALKGEN_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
