# robotpkg depend.mk for:	wip/ros-four-wheel-steering-msgs
# Created:			Guilhem Saurel on Mon, 27 Jan 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_FOUR_WHEEL_STEERING_MSGS_DEPEND_MK:=	${ROS_FOUR_WHEEL_STEERING_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=					ros-four-wheel-steering-msgs
endif

ifeq (+,$(ROS_FOUR_WHEEL_STEERING_MSGS_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
include ../../mk/robotpkg.prefs.mk

PREFER.ros-four-wheel-steering-msgs?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-four-wheel-steering-msgs?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=					ros-four-wheel-steering-msgs
ROS_DEPEND_USE+=				ros-four-wheel-steering-msgs

DEPEND_ABI.ros-four-wheel-steering-msgs?=	ros-four-wheel-steering-msgs>=1.0.1
DEPEND_DIR.ros-four-wheel-steering-msgs?=	../../wip/ros-four-wheel-steering-msgs

SYSTEM_SEARCH.ros-four-wheel-steering-msgs=\
	include/four_wheel_steering_msgs/FourWheelSteering.h									\
	'lib/pkgconfig/four_wheel_steering_msgs.pc:/Version/s/[^0-9.]//gp'							\
	'share/four_wheel_steering_msgs/cmake/four_wheel_steering_msgsConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'share/four_wheel_steering_msgs/package.xml:/<version>/s/[^.0-9]//gp'

endif # ROS_FOUR_WHEEL_STEERING_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
