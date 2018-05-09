# robotpkg depend.mk for:	wip/pal-navigation-sm
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_NAVIGATION_SM_DEPEND_MK:=	${PAL_NAVIGATION_SM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-navigation-sm
endif

ifeq (+,$(PAL_NAVIGATION_SM_DEPEND_MK)) # ----------------------------------

PREFER.pal-navigation-sm?=	robotpkg

DEPEND_USE+=			pal-navigation-sm

DEPEND_ABI.pal-navigation-sm?=	pal-navigation-sm>=0.1.7
DEPEND_DIR.pal-navigation-sm?=	../../wip/pal-navigation-sm

SYSTEM_SEARCH.pal-navigation-sm=\
  'share/pal_navigation_sm/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_navigation_sm.pc:/Version/s/[^0-9.]//gp'  \
  'share/pal_navigation_sm/cmake/pal_navigation_smConfig.cmake'

endif # PAL_NAVIGATION_SM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
