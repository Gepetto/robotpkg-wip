# robotpkg depend.mk for:	wip/ros-moveit-resources
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
UNIVERSAL_ROBOT_DEPEND_MK:=	${UNIVERSAL_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-moveit-resources
endif

ifeq (+,$(UNIVERSAL_ROBOT_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-moveit-resources?=	${PREFER.ros-base}
SYSTEM_PREFIX.ros-moveit-resources?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		ros-moveit-resources
ROS_DEPEND_USE+=		ros-moveit-resources

DEPEND_ABI.ros-moveit-resources?=	moveit-resources>=0.6.4
DEPEND_DIR.ros-moveit-resources?=	../../wip/ros-moveit-resources

SYSTEM_SEARCH.ros-moveit-resources=\
	include/moveit_resources/config.h	\
	'lib/pkgconfig/moveit_resources.pc:/Version/s/[^0-9.]//gp'

endif # UNIVERSAL_ROBOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
