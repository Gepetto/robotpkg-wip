# robotpkg depend.mk for:	wip/tiago-navigation
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TIAGO_NAVIGATION_DEPEND_MK:=	${TIAGO_NAVIGATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tiago-navigation
endif

ifeq (+,$(TIAGO_NAVIGATION_DEPEND_MK)) # ----------------------------------

PREFER.tiago-navigation?=	robotpkg

DEPEND_USE+=			tiago-navigation

DEPEND_ABI.tiago-navigation?=	tiago-navigation>=0.9.8
DEPEND_DIR.tiago-navigation?=	../../wip/tiago-navigation

SYSTEM_SEARCH.tiago-navigation=\
  'share/tiago_navigation/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tiago_navigation.pc:/Version/s/[^0-9.]//gp'  \
  'share/tiago_navigation/cmake/tiago_navigationConfig.cmake'

endif # TIAGO_NAVIGATION_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
