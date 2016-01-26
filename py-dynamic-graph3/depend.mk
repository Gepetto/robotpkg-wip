# robotpkg depend.mk for:	motion/py-dynamic-graph
# Created:			Florent Lamiraux on Thu, 7 Jul 2011
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_DYNAMIC_GRAPH_DEPEND_MK:=	${PY_DYNAMIC_GRAPHDEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-dynamic-graph
endif

ifeq (+,$(PY_DYNAMIC_GRAPH_DEPEND_MK)) # -----------------------------------

PREFER.py-dynamic-graph?=	robotpkg

DEPEND_USE+=			py-dynamic-graph
DEPEND_ABI.py-dynamic-graph?=	${PKGTAG.python-}dynamic-graph>=3.0
DEPEND_DIR.py-dynamic-graph?=	../../wip/py-dynamic-graph3

SYSTEM_SEARCH.py-dynamic-graph=\
	lib/pkgconfig/dynamic-graph-python.pc \
	include/dynamic-graph/python/interpreter.hh

include ../../mk/sysdep/python.mk

endif # PY_DYNAMIC_GRAPH_DEPEND_MK -----------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
