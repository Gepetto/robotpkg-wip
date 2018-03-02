# robotpkg depend.mk for:	wip/rqt_dynamic_graph
# Created:			Olivier Stasse on Thu, 2 Mar 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
RQT_DYNAMIC_GRAPH_DEPEND_MK:=	${RQT_DYNAMIC_GRAPH_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			rqt-dynamic-graph
endif

ifeq (+,$(RQT_DYNAMIC_GRAPH_DEPEND_MK)) # ---------------------------------

PREFER.rqt-dynamic-graph?=	robotpkg

DEPEND_USE+=			rqt-dynamic-graph

DEPEND_ABI.rqt-dynamic-graph?=\
	rqt-dynamic-graph>=1.0.0
DEPEND_DIR.rqt-dynamic-graph?=\
	../../wip/rqt-dynamic-graph

SYSTEM_SEARCH.rqt-dynamic-graph=\
  'share/rqt_dynamic_graph/cmake/rqt_dynamic_graphConfig.cmake' \
  'share/rqt_dynamic_graph/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/rqt_dynamic_graph.pc:/Version/s/[^0-9.]//gp'

endif # RQT_DYNAMIC_GRAPH_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
