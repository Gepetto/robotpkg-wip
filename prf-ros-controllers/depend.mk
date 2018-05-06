# robotpkg depend.mk for:	wip/ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_CONTROLLERS_DEPEND_MK:=	${ROS_CONTROLLERS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ros-controllers
endif

ifeq (+,$(ROS_CONTROLLERS_DEPEND_MK)) # ----------------------------------

PREFER.ros-controllers?=	robotpkg

DEPEND_USE+=			ros-controllers

DEPEND_ABI.ros-controllers?=	ros-controllers>=0.2.8
DEPEND_DIR.ros-controllers?=	../../wip/ros-controllers

SYSTEM_SEARCH.ros-controllers=\
  'include/joint_state_controller/joint_state_controller.h'		\
  'lib/libjoint_state_controller.so'				\
  'share/joint_state_controller/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/joint_state_controller.pc:/Version/s/[^0-9.]//gp'  \
  'share/controller_interface/cmake/controller_interfaceConfig.cmake'

endif # ROS_CONTROLLERS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
