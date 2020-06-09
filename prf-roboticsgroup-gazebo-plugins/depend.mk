# robotpkg depend.mk for:	wip/prf-roboticsgroup-gazebo-plugins
# Created:			Olivier Stasse on Thu, 4 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PRF_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK:=	${PRF_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			prf-roboticsgroup-gazebo-plugins
endif

ifeq (+,$(PRF_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK)) # ----------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.prf-roboticsgroup-gazebo-plugins?=	${PREFER.pal}

DEPEND_USE+=			prf-roboticsgroup-gazebo-plugins

DEPEND_ABI.prf-roboticsgroup-gazebo-plugins?=	prf-roboticsgroup-gazebo-plugins>=0.0.3
DEPEND_DIR.prf-roboticsgroup-gazebo-plugins?=	../../wip/prf-roboticsgroup-gazebo-plugins

SYSTEM_SEARCH.prf-roboticsgroup-gazebo-plugins=\
  'lib/libroboticsgroup_gazebo_disable_link_plugin.so' \
  'share/roboticsgroup_gazebo_plugins/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/roboticsgroup_gazebo_plugins.pc:/Version/s/[^0-9.]//gp'

endif # PRF_ROBOTICSGRP_GAZEBO_PLUGINS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
