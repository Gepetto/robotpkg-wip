# robotpkg depend.mk for:	wip/prf-gazebo-ros-pkgs-melodic
# Created:			Olivier Stasse on Mer, 2 Jan 2020
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
GAZEBO_ROS_PKGS_MELODIC_DEPEND_MK:=	${GAZEBO_ROS_PKGS_MELODIC_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				prf-gazebo-ros-pkgs-melodic
endif

ifeq (+,$(GAZEBO_ROS_PKGS_MELODIC_DEPEND_MK)) # ---------------------------

PREFER.prf-gazebo-ros-pkgs-melodic?=	robotpkg

DEPEND_USE+=				prf-gazebo-ros-pkgs-melodic

DEPEND_ABI.prf-gazebo-ros-pkgs-melodic?=	prf-gazebo-ros-pkgs-melodic>=3.0.1
DEPEND_DIR.prf-gazebo-ros-pkgs-melodic?=	../../wip/prf-gazebo-ros-pkgs-melodic

SYSTEM_SEARCH.prf-gazebo-ros-pkgs-melodic=\
  'include/gazebo_ros_control/gazebo_ros_control_plugin.h'	\
  'include/gazebo_ros_control/default_robot_hw_sim.h'	\
  'include/gazebo_ros_control/robot_hw_sim.h'	\
  'share/gazebo_ros_control/cmake/gazebo_ros_controlConfig.cmake' \
  'share/gazebo_ros_control/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/gazebo_ros_control.pc:/Version/s/[^0-9.]//gp'

endif # GAZEBO_ROS_PKGS_DEPEND_MK ---------------------------------

DEPEND_DEPTH:=				${DEPEND_DEPTH:+=}
