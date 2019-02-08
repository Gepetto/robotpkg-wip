# robotpkg depend.mk for:	wip/ros-octomap-msgs
# Created:			Guilhem Saurel on Fri, 20 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OCTOMAP_MSGS_DEPEND_MK:=	${OCTOMAP_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-octomap-msgs
endif

ifeq (+,$(OCTOMAP_MSGS_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-octomap-msgs?=	${PREFER.ros-base}
SYSTEM_PREFIX.ros-octomap-msgs?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		ros-octomap-msgs
ROS_DEPEND_USE+=		ros-octomap-msgs

DEPEND_ABI.ros-octomap-msgs?=	octomap-msgs>=0.3.3
DEPEND_DIR.ros-octomap-msgs?=	../../wip/ros-octomap-msgs

SYSTEM_SEARCH.ros-octomap-msgs=\
	include/octomap_msgs/conversions.h	\
	'lib/pkgconfig/octomap_msgs.pc:/Version/s/[^0-9.]//gp'

endif # OCTOMAP_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
