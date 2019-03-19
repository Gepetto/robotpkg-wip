# robotpkg depend.mk for:	wip/ros-baxter-common
# Created:			Guilhem Saurel on Wed, 13 Mar 2019
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_BAXTER_COMMON_DEPEND_MK:=	${ROS_BAXTER_COMMON_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-baxter-common
endif

ifeq (+,$(ROS_BAXTER_COMMON_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-baxter-common?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-baxter-common?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=				ros-baxter-common
ROS_DEPEND_USE+=			ros-baxter-common

DEPEND_ABI.ros-baxter-common?=		ros-baxter-common>=1.2.0
DEPEND_DIR.ros-baxter-common?=		../../wip/ros-baxter-common

SYSTEM_SEARCH.ros-baxter-common=\
	include/baxter_core_msgs/OpenCamera.h	\
	'lib/pkgconfig/baxter_description.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-baxter-common=   ${PREFIX.ros-baxter-common}

endif # ROS_BAXTER_COMMON_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
