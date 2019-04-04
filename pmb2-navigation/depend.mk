# robotpkg depend.mk for:	wip/pmb2-navigation
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PMB2_NAVIGATION_DEPEND_MK:=	${PMB2_NAVIGATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pmb2-navigation
endif

ifeq (+,$(PMB2_NAVIGATION_DEPEND_MK)) # ----------------------------------

PREFER.pmb2-navigation?=	robotpkg

DEPEND_USE+=			pmb2-navigation

DEPEND_ABI.pmb2-navigation?=	pmb2-navigation>=1.0.4
DEPEND_DIR.pmb2-navigation?=	../../wip/pmb2-navigation

SYSTEM_SEARCH.pmb2-navigation=\
  'share/pmb2_navigation/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pmb2_navigation.pc:/Version/s/[^0-9.]//gp'  \
  'share/pmb2_navigation/cmake/pmb2_navigationConfig.cmake'

endif # PMB2_NAVIGATION_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
