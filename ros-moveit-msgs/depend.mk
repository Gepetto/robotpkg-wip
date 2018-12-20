# robotpkg depend.mk for:	wip/ros-moveit-msgs
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVEIT_MSGS_DEPEND_MK:=	${MOVEIT_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-moveit-msgs
endif

ifeq (+,$(MOVEIT_MSGS_DEPEND_MK)) # --------------------------------------

PREFER.ros-moveit-msgs?=	robotpkg

DEPEND_USE+=		ros-moveit-msgs

DEPEND_ABI.ros-moveit-msgs?=	moveit-msgs>=0.10.0
DEPEND_DIR.ros-moveit-msgs?=	../../wip/ros-moveit-msgs

SYSTEM_SEARCH.ros-moveit-msgs=\
	include/moveit_msgs/RobotState.h	\
	'lib/pkgconfig/moveit_msgs.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-moveit-msgs=  ${PREFIX.ros-moveit-msgs}

endif # MOVEIT_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
