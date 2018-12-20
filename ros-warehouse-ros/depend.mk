# robotpkg depend.mk for:	wip/ros-warehouse-ros
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
WAREHOUSE_ROS_DEPEND_MK:=	${WAREHOUSE_ROS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-warehouse-ros
endif

ifeq (+,$(WAREHOUSE_ROS_DEPEND_MK)) # --------------------------------------

PREFER.ros-warehouse-ros?=	robotpkg

DEPEND_USE+=		ros-warehouse-ros

DEPEND_ABI.ros-warehouse-ros?=	warehouse-ros>=0.9.2
DEPEND_DIR.ros-warehouse-ros?=	../../wip/ros-warehouse-ros

SYSTEM_SEARCH.ros-warehouse-ros=\
	include/warehouse_ros/exceptions.h	\
	'lib/pkgconfig/warehouse_ros.pc:/Version/s/[^0-9.]//gp'

endif # WAREHOUSE_ROS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
