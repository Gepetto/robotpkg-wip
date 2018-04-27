# robotpkg depend.mk for:	wip/gazebo_ros_pkgs
# Created:			Olivier Stasse on Mer, 3 May 2017
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
GAZEBO_ROS_PKGS_DEPEND_MK:=	${GAZEBO_ROS_PKGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				gazebo_ros_pkgs
endif

ifeq (+,$(GAZEBO_ROS_PKGS_DEPEND_MK)) # ---------------------------

PREFER.gazebo_ros_pkgs?=	robotpkg

DEPEND_USE+=				gazebo_ros_pkgs

DEPEND_ABI.gazebo_ros_pkgs?=	gazebo_ros_pkgs>=2.6.5
DEPEND_DIR.gazebo_ros_pkgs?=	../../wip/gazebo_ros_pkgs

SYSTEM_SEARCH.gazebo_ros_pkgs=\
  'include/gazebo_ros_pkgs/gazebo_ros_control_plugin.h'	\
  'share/gazebo_ros_pkgs/cmake/gazebo_ros_pkgsConfig.cmake' \
  'share/gazebo_ros_pkgs/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/gazebo_ros_pkgs.pc:/Version/s/[^0-9.]//gp'

endif # GAZEBO_ROS_PKGS_DEPEND_MK ---------------------------------

DEPEND_DEPTH:=				${DEPEND_DEPTH:+=}
