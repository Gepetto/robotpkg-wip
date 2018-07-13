# robotpkg depend.mk for:	wip/dynamic-graph-tutorial
# Created:			Guilhem Saurel on Fri, 13 Jul 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK:=	${DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		dynamic-graph-tutorial
endif

ifeq (+,$(DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK)) # ------------------------------------------

PREFER.dynamic-graph-tutorial?=	robotpkg

SYSTEM_SEARCH.dynamic-graph-tutorial=\
  'include/dynamic/graph/tutorial/config.hh:/DYNAMIC_GRAPH_TUTORIAL_VERSION/s/[^0-9.]//gp'	\
  'lib/libdynamic-graph-tutorial.so'							\
  'lib/pkgconfig/dynamic-graph-tutorial.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		dynamic-graph-tutorial

DEPEND_ABI.dynamic-graph-tutorial?=	dynamic-graph-tutorial>=1.1.0
DEPEND_DIR.dynamic-graph-tutorial?=	../../wip/dynamic-graph-tutorial

endif # DYNAMIC_GRAPH_TUTORIAL_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
