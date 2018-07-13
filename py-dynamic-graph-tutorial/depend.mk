# robotpkg depend.mk for:	wip/py-dynamic-graph-tutorial
# Created:			Guilhem Saurel on Fri, 13 Jul 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK:=	${PY_DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-dynamic-graph-tutorial
endif

ifeq (+,$(PY_DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK)) # ------------------------------------------

PREFER.py-dynamic-graph-tutorial?=	robotpkg

SYSTEM_SEARCH.py-dynamic-graph-tutorial=\
  'include/dynamic/graph/tutorial/config.hh:/DYNAMIC_GRAPH_TUTORIAL_VERSION/s/[^0-9.]//gp'	\
  'lib/libdynamic-graph-tutorial.so'							\
  'lib/pkgconfig/dynamic-graph-tutorial.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		py-dynamic-graph-tutorial

DEPEND_ABI.py-dynamic-graph-tutorial?=	py-dynamic-graph-tutorial>=1.0.0
DEPEND_DIR.py-dynamic-graph-tutorial?=	../../wip/py-dynamic-graph-tutorial

endif # PY_DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
