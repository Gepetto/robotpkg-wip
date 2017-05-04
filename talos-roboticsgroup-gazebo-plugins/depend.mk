# robotpkg depend.mk for:	wip/talos-roboticsgroup-gazebo-plugins
# Created:			Olivier Stasse on Thu, 4 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK:=	${TALOS_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-roboticsgroup-gazebo-plugins
endif

ifeq (+,$(TALOS_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK)) # ----------------------------------

PREFER.talos-roboticsgroup-gazebo-plugins?=	robotpkg

DEPEND_USE+=			talos-roboticsgroup-gazebo-plugins

DEPEND_ABI.talos-roboticsgroup-gazebo-plugins?=	talos-roboticsgroup-gazebo-plugins>=0.0.3
DEPEND_DIR.talos-roboticsgroup-gazebo-plugins?=	../../wip/talos-roboticsgroup-gazebo-plugins

SYSTEM_SEARCH.talos-roboticsgroup-gazebo-plugins=\
  'include/talos_roboticsgroup_gazebo_plugins/mimic_joint_plugin.h' \
  'lib/libtalos_roboticsgroup_gazebo_disable_link_plugin.so' \
  'share/talos_roboticsgroup_gazebo_plugins/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_roboticsgroup_gazebo_plugins.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
