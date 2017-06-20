# robotpkg depend.mk for:	wip/talos-gazebo-ros-control
# Created:			Olivier Stasse on Mer, 3 May 2017
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
TALOS_GAZEBO_ROS_CONTROL_DEPEND_MK:=	${TALOS_GAZEBO_ROS_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				talos-gazebo-ros-control
endif

ifeq (+,$(TALOS_GAZEBO_ROS_CONTROL_DEPEND_MK)) # ---------------------------

PREFER.talos-gazebo-ros-control?=	robotpkg

DEPEND_USE+=				talos-gazebo-ros-control

DEPEND_ABI.talos-gazebo-ros-control?=	talos-gazebo-ros-control>=2.6.5
DEPEND_DIR.talos-gazebo-ros-control?=	../../wip/talos-gazebo-ros-control

SYSTEM_SEARCH.talos-gazebo-ros-control=\
  'include/talos_gazebo_ros_control/gazebo_ros_control_plugin.h'	\
  'share/talos_gazebo_ros_control/cmake/talos_gazebo_ros_controlConfig.cmake' \
  'share/talos_gazebo_ros_control/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_gazebo_ros_control.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_GAZEBO_ROS_CONTROL_DEPEND_MK ---------------------------------

DEPEND_DEPTH:=				${DEPEND_DEPTH:+=}
