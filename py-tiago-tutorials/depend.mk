# robotpkg depend.mk for:	wip/py-tiago-tutorials
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_TIAGO_TUTORIALS_DEPEND_MK:=	${PY_TIAGO_TUTORIALS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-tiago-tutorials
endif

ifeq (+,$(PY_TIAGO_TUTORIALS_DEPEND_MK)) # ----------------------------------

PREFER.py-tiago-tutorials?=	robotpkg

DEPEND_USE+=			py-tiago-tutorials

DEPEND_ABI.py-tiago-tutorials?=	${PKGTAG.python-}tiago-tutorials>=2.0.2
DEPEND_DIR.py-tiago-tutorials?=	../../wip/py-tiago-tutorials

SYSTEM_SEARCH.py-tiago-tutorials=				\
  'share/tiago_tutorials/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tiago_tutorials.pc:/Version/s/[^0-9.]//gp'	\
  'share/tiago_tutorials/cmake/tiago_tutorialsConfig.cmake'	\
  '${PYTHON_SYSLIBSEARCH}/tiago_pcl_tutorial/__init__.py'

include ../../mk/sysdep/python.mk

endif # PY_TIAGO_TUTORIALS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
