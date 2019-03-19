# robotpkg depend.mk for:	wip/ros-moveit-msgs
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_MOVEIT_MSGS_DEPEND_MK:=	${ROS_MOVEIT_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-moveit-msgs
endif

ifeq (+,$(ROS_MOVEIT_MSGS_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-moveit-msgs?=	${PREFER.ros-base}
SYSTEM_PREFIX.ros-moveit-msgs?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=			ros-moveit-msgs
ROS_DEPEND_USE+=		ros-moveit-msgs

DEPEND_ABI.ros-moveit-msgs?=	ros-moveit-msgs>=0.10.0
DEPEND_DIR.ros-moveit-msgs?=	../../wip/ros-moveit-msgs

SYSTEM_SEARCH.ros-moveit-msgs=\
	include/moveit_msgs/RobotState.h	\
	'lib/pkgconfig/moveit_msgs.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-moveit-msgs=  ${PREFIX.ros-moveit-msgs}

endif # ROS_MOVEIT_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
