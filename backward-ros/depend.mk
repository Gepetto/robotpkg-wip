# robotpkg depend.mk for:	wip/backward_ros
# Created:			Olivier Stasse on fri, 27 Apr 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
BACKWARD_ROS_DEPEND_MK:=	${BACKWARD_ROS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			backward_ros
endif

ifeq (+,$(BACKWARD_ROS_DEPEND_MK)) # ---------------------------------

include ../../meta-pkgs/ros-base/depend.common

PREFER.backward-ros?=		${PREFER.ros-base}

SYSTEM_SEARCH.backward-ros=\
    'lib/pkgconfig/backward_ros.pc:/Version/s/[^0-9.]//gp' \
    'share/backward_ros/cmake/backward_rosConfig.cmake'

DEPEND_USE+=			backward-ros

DEPEND_ABI.backward-ros?=	backward-ros>=0.1.4
DEPEND_DIR.backward-ros?=	../../wip/backward-ros

endif # BACKWARD_ROS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
