# robotpkg depend.mk for:	wip/talos-ros-control
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_ROS_CONTROL_DEPEND_MK:=	${TALOS_ROS_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-ros-control
endif

ifeq (+,$(TALOS_ROS_CONTROL_DEPEND_MK)) # ----------------------------------

PREFER.talos-ros-control?=	robotpkg

DEPEND_USE+=			talos-ros-control

DEPEND_ABI.talos-ros-control?=	talos-ros-control>=0.2
DEPEND_DIR.talos-ros-control?=	../../wip/talos-ros-control

SYSTEM_SEARCH.talos-ros-control=\
  'include/talos_controller_manager/controller_loader.h'		\
  'lib/libtalos_controller_manager.so'				\
  'share/talos_ros_control/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_controller_interface.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_ROS_CONTROL_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
