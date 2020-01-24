# robotpkg depend.mk for:	wip/ros-pcl-msgs
# Created:			Guilhem Saurel on Fri, 24 Jan 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_PCL_MSGS_DEPEND_MK:=	${ROS_PCL_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-pcl-msgs
endif

ifeq (+,$(ROS_PCL_MSGS_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
include ../../mk/robotpkg.prefs.mk

PREFER.ros-pcl-msgs?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-pcl-msgs?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=				ros-pcl-msgs
ROS_DEPEND_USE+=			ros-pcl-msgs

DEPEND_ABI.ros-pcl-msgs?=		ros-pcl-msgs>=0.2.0
DEPEND_DIR.ros-pcl-msgs?=		../../wip/ros-pcl-msgs

SYSTEM_SEARCH.ros-pcl-msgs=\
	include/pcl_msgs/Vertices.h					\
	'lib/pkgconfig/pcl_msgs.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-perception-pcl=   ${PREFIX.ros-perception-pcl}

endif # ROS_PCL_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
