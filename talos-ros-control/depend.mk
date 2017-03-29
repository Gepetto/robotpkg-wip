# robotpkg depend.mk for:	wip/talos_ros_control
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TALOS_ROS_CONTROL_DEPEND_MK:=	${TALOS_ROS_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		talos-ros-control
endif

ifeq (+,$(TALOS_ROS_CONTROL_DEPEND_MK)) # -------------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.talos_ros_control?=	${PREFER.ros-base}
SYSTEM_PREFIX.talos_ros_control?=${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		talos_ros_control
ROS_DEPEND_USE+=	talos_ros_control

DEPEND_ABI.talos_ros_control?=	ros-talos-ros-control>=0.2
DEPEND_DIR.talos_ros_control?=	../../wip/talos-ros-control

SYSTEM_SEARCH.talos_ros_control=\
	include/controller_manager/controller_loader.h		\
	lib/libcontroller_manager.so						\
	'share/ros_control/package.xml:/<version>/s/[^0-9.]//gp'		\
	'lib/pkgconfig/controller_interface.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_ROS_CONTROL_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
