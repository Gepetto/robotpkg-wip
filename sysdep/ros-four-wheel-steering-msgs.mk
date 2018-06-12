# robotpkg sysdep/ros-four-wheel-steering-msgs
# Created:			Olivier Stasse on Mon 11 2018
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
FOUR_WHEEL_STEERING_MSGS_DEPEND_MK:=	${FOUR_WHEEL_STEERING_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-four-wheel-steering-msgs
endif

ifeq (+,$(FOUR_WHEEL_STEERING_MSGS_DEPEND_MK)) # ---------------------------------------------

include ../../meta-pkgs/ros-base/depend.common

PREFER.ros-four-wheel-steering-msgs?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-four-wheel-steering-msgs?=    ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		ros-four-wheel-steering-msgs
ROS_DEPEND_USE+=		ros-four-wheel-steering-msgs

DEPEND_ABI.ros-four-wheel-steering-msgs?=	ros-four-wheel-steering-msgs>=1

DEPEND_METHOD.ros-four-wheel-steering-msgs+=build

SYSTEM_SEARCH.ros-four-wheel-steering-msgs+=	'share/four_wheel_steering_msgs/package.xml:/<version>/s/[^.0-9]//gp'


endif # FOUR_WHEEL_STEERING_MSGS_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
