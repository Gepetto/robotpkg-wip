# robotpkg depend.mk for:	wip/ros-control
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_CONTROL_DEPEND_MK:=	${ROS_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ros-control
endif

ifeq (+,$(ROS_CONTROL_DEPEND_MK)) # ----------------------------------

PREFER.ros-control?=	robotpkg

DEPEND_USE+=			ros-control

DEPEND_ABI.ros-control?=	ros-control>=0.2
DEPEND_DIR.ros-control?=	../../wip/ros-control

SYSTEM_SEARCH.ros-control=\
  'include/controller_manager/controller_loader.h'		\
  'lib/libcontroller_manager.so'					\
  'share/ros_control/package.xml:/<version>/s/[^0-9.]//gp'	\
  $(foreach _,								\
	controller_interface					\
	rqt_controller_manager					\
	controller_interface					\
	controller_manager					\
	controller_manager_msgs					\
	controller_manager_tests					\
	hardware_interface					\
	joint_limits_interface					\
	transmission_interface,					\
  'share/$_/cmake/$_Config.cmake'					\
  'lib/pkgconfig/$_.pc:/Version/s/[^0-9.]//gp')

endif # ROS_CONTROL_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
