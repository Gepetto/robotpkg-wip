# robotpkg depend.mk for:	wip/talos-pal-gazebo-plugins
# Created:			Olivier Stasse on Mer, 3 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_PAL_GAZEBO_PLUGINS_DEPEND_MK:=${TALOS_PAL_GAZEBO_PLUGINS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-pal-gazebo-plugins
endif

ifeq (+,$(TALOS_PAL_GAZEBO_PLUGINS_DEPEND_MK)) # ---------------------------------

PREFER.talos-pal-gazebo-plugins?=	robotpkg

DEPEND_USE+=			talos-pal-gazebo-plugins

DEPEND_ABI.talos-pal-gazebo-plugins?=\
	talos-pal-gazebo-plugins>=1.1.5
DEPEND_DIR.talos-pal-gazebo-plugins?=\
	../../wip/talos-pal-gazebo-plugins

SYSTEM_SEARCH.talos-pal-gazebo-plugins=\
  'include/talos_pal_gazebo_plugins/gazebo_pal_hand.h'	\
  'share/talos_pal_gazebo_plugins/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_pal_gazebo_plugins.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_PAL_GAZEBO_PLUGINS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
