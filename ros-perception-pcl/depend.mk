# robotpkg depend.mk for:	wip/ros-perception-pcl
# Created:			Guilhem Saurel on Fri, 24 Jan 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_PERCEPTION_PCL_DEPEND_MK:=	${ROS_PERCEPTION_PCL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-perception-pcl
endif

ifeq (+,$(ROS_PERCEPTION_PCL_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
include ../../mk/robotpkg.prefs.mk

PREFER.ros-perception-pcl?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-perception-pcl?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=				ros-perception-pcl
ROS_DEPEND_USE+=			ros-perception-pcl

DEPEND_ABI.ros-perception-pcl?=		ros-perception-pcl>=1.7.0
DEPEND_DIR.ros-perception-pcl?=		../../wip/ros-perception-pcl

SYSTEM_SEARCH.ros-perception-pcl=\
	include/pcl_conversions/pcl_conversions.h			\
	'lib/pkgconfig/pcl_ros.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-perception-pcl=   ${PREFIX.ros-perception-pcl}

endif # ROS_PERCEPTION_PCL_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
