# robotpkg depend.mk for:	wip/ros-moveit
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVEIT_DEPEND_MK:=	${MOVEIT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-moveit
endif

ifeq (+,$(MOVEIT_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-moveit?=	${PREFER.ros-base}
SYSTEM_PREFIX.ros-moveit?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		ros-moveit
ROS_DEPEND_USE+=		ros-moveit

DEPEND_ABI.ros-moveit?=	moveit>=0.10.5
DEPEND_DIR.ros-moveit?=	../../wip/ros-moveit

SYSTEM_SEARCH.ros-moveit=\
	include/moveit/backtrace/backtrace.h	\
	'lib/pkgconfig/moveit_core.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-moveit=   ${PREFIX.ros-moveit}

endif # MOVEIT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
