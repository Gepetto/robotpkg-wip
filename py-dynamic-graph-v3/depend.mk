# robotpkg depend.mk for:	motion/py-dynamic-graph
# Created:			Florent Lamiraux on Thu, 7 Jul 2011
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_DYNAMIC_GRAPH_V3_DEPEND_MK:=	${PY_DYNAMIC_GRAPH_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-dynamic-graph-v3
endif

ifeq (+,$(PY_DYNAMIC_GRAPH_V3_DEPEND_MK)) # -----------------------------------

PREFER.py-dynamic-graph-v3?=	robotpkg

DEPEND_USE+=			py-dynamic-graph-v3
DEPEND_ABI.py-dynamic-graph-v3?=	${PKGTAG.python-}dynamic-graph-v3>=4.0.0
DEPEND_DIR.py-dynamic-graph-v3?=	../../wip/py-dynamic-graph-v3

SYSTEM_SEARCH.py-dynamic-graph-v3=\
  'include/dynamic-graph/python/config.hh:/DYNAMIC_GRAPH_PYTHON_VERSION /s/[^0-9.]//gp'				\
  'lib/libdynamic-graph-python.so'										\
  '${PYTHON_SYSLIBSEARCH}/dynamic_graph/wrap.so'								\
  '${PYTHON_SYSLIBSEARCH}/dynamic_graph/__init__.py'								\
  'lib/cmake/dynamic-graph-python/dynamic-graph-pythonConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/dynamic-graph-python.pc:/Version/s/[^0-9.]//gp'						\
  'share/dynamic-graph-python/package.xml:/<version>/s/[^0-9.]//gp'

include ../../mk/sysdep/python.mk

endif # PY_DYNAMIC_GRAPH_DEPEND_MK -----------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
