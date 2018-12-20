# robotpkg depend.mk for:	wip/moveit-msgs
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVEIT_MSGS_DEPEND_MK:=	${MOVEIT_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		moveit-msgs
endif

ifeq (+,$(MOVEIT_MSGS_DEPEND_MK)) # --------------------------------------

PREFER.moveit-msgs?=	robotpkg

DEPEND_USE+=		moveit-msgs

DEPEND_ABI.moveit-msgs?=	moveit-msgs>=0.10.0
DEPEND_DIR.moveit-msgs?=	../../wip/moveit-msgs

SYSTEM_SEARCH.moveit-msgs=\
	include/moveit_msgs/RobotState.h	\
	'lib/pkgconfig/moveit_msgs.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.moveit-msgs=  ${PREFIX.moveit-msgs}

endif # MOVEIT_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
