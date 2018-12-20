# robotpkg depend.mk for:	wip/warehouse-ros
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
WAREHOUSE_ROS_DEPEND_MK:=	${WAREHOUSE_ROS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		warehouse-ros
endif

ifeq (+,$(WAREHOUSE_ROS_DEPEND_MK)) # --------------------------------------

PREFER.warehouse-ros?=	robotpkg

DEPEND_USE+=		warehouse-ros

DEPEND_ABI.warehouse-ros?=	warehouse-ros>=0.9.2
DEPEND_DIR.warehouse-ros?=	../../wip/warehouse-ros

SYSTEM_SEARCH.warehouse-ros=\
	include/warehouse_ros/exceptions.h	\
	'lib/pkgconfig/warehouse_ros.pc:/Version/s/[^0-9.]//gp'

endif # WAREHOUSE_ROS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
