# robotpkg depend.mk for:	wip/dynamic-graph3
# Created:			Rohan Budhiraja on 25 Jan 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_GIK_DEPEND_MK:=	${HPP_GIK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		dynamic-graph-v3
endif

ifeq (+,$(HPP_GIK_DEPEND_MK)) # --------------------------------------

PREFER.dynamic-graph-v3?=	robotpkg

SYSTEM_SEARCH.dynamic-graph-v3=\
  'include/dynamic-graph/config.hh:/DYNAMIC_GRAPH_VERSION /s/[^0-9.]//gp'			\
  'lib/cmake/dynamic-graph/dynamic-graphConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/dynamic-graph.pc:/Version/s/[^0-9.]//gp'					\
  'lib/libdynamic-graph.so'									\
  'share/dynamic-graph/package.xml:/<version>/s/[^0-9.]//gp'

DEPEND_USE+=		dynamic-graph-v3

DEPEND_ABI.dynamic-graph-v3?=	dynamic-graph-v3>=4.3.0
DEPEND_DIR.dynamic-graph-v3?=	../../wip/dynamic-graph-v3

endif # HPP_GIK_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
