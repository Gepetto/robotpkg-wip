# robotpkg depend.mk for:	wip/tiago-tutorials
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TIAGO_TUTORIALS_DEPEND_MK:=	${TIAGO_TUTORIALS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tiago-tutorials
endif

ifeq (+,$(TIAGO_TUTORIALS_DEPEND_MK)) # ----------------------------------

PREFER.tiago-tutorials?=	robotpkg

DEPEND_USE+=			tiago-tutorials

DEPEND_ABI.tiago-tutorials?=	tiago-tutorials>=2.0.2
DEPEND_DIR.tiago-tutorials?=	../../wip/tiago-tutorials

SYSTEM_SEARCH.tiago-tutorials=\
  'share/tiago_tutorials/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tiago_tutorials.pc:/Version/s/[^0-9.]//gp'  \
  'share/tiago_tutorials/cmake/tiago_tutorialsConfig.cmake'

endif # TIAGO_TUTORIALS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
