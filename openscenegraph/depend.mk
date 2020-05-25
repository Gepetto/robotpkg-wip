# robotpkg depend.mk for:	graphics/OpenSceneGraph
# Created:			Guilhem Saurel on Mon, 25 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
OPENSCENEGRAPH_DEPEND_MK:=	${OPENSCENEGRAPH_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			openscenegraph
endif

ifeq (+,$(OPENSCENEGRAPH_DEPEND_MK)) # -------------------------------------

PREFER.openscenegraph?=		robotpkg
DEPEND_USE+=			openscenegraph
DEPEND_ABI.openscenegraph?=	OpenSceneGraph>=3.6
DEPEND_DIR.openscenegraph?=	../../wip/openscenegraph

SYSTEM_SEARCH.openscenegraph=\
  'include/osg/Object'						\
  'lib/libosg.so'						\
  'lib/pkgconfig/openscenegraph.pc:/Version/s/[^0-9.]//gp'

endif # OPENSCENEGRAPH_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
