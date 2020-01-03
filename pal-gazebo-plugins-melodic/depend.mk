# robotpkg depend.mk for:	wip/pal-gazebo-plugins-melodic
# Created:			Olivier Stasse on Mer, 3 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_GAZEBO_PLUGINS_MELODIC_DEPEND_MK:=${PAL_GAZEBO_PLUGINS_MELODIC_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-gazebo-plugins-melodic
endif

ifeq (+,$(PAL_GAZEBO_PLUGINS_DEPEND_MK)) # ---------------------------------

PREFER.pal-gazebo-plugins-melodic?=	robotpkg

DEPEND_USE+=			pal-gazebo-plugins-melodic

DEPEND_ABI.pal-gazebo-plugins-melodic?=\
	pal-gazebo-plugins-melodic>=2.0.0
DEPEND_DIR.pal-gazebo-plugins-melodic?=\
	../../wip/pal-gazebo-plugins-melodic

SYSTEM_SEARCH.pal-gazebo-plugins-melodic=\
  'include/pal_gazebo_plugins/gazebo_pal_hand.h'	\
  'share/pal_gazebo_plugins/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_gazebo_plugins.pc:/Version/s/[^0-9.]//gp'

endif # PAL_GAZEBO_PLUGINS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
