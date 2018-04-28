# robotpkg depend.mk for:	wip/gazebo_ros_pkgs
# Created:			Olivier Stasse on Mer, 3 May 2017
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
GAZEBO_ROS_PKGS_DEPEND_MK:=	${GAZEBO_ROS_PKGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				prf-gazebo-ros-pkgs
endif

ifeq (+,$(GAZEBO_ROS_PKGS_DEPEND_MK)) # ---------------------------

PREFER.prf-gazebo-ros-pkgs?=	robotpkg

DEPEND_USE+=				prf-gazebo-ros-pkgs

DEPEND_ABI.prf-gazebo-ros-pkgs?=	prf-gazebo-ros-pkgs>=2.6.5
DEPEND_DIR.prf-gazebo-ros-pkgs?=	../../wip/prf-gazebo-ros-pkgs

SYSTEM_SEARCH.prf-gazebo-ros-pkgs=\
  'include/gazebo_ros_control/gazebo_ros_control_plugin.h'	\
  'share/gazebo_ros_control/cmake/gazebo_ros_controlConfig.cmake' \
  'share/gazebo_ros_control/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/gazebo_ros_control.pc:/Version/s/[^0-9.]//gp'

endif # GAZEBO_ROS_PKGS_DEPEND_MK ---------------------------------

DEPEND_DEPTH:=				${DEPEND_DEPTH:+=}
