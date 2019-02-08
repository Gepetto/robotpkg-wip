# robotpkg depend.mk for:	wip/ros-srdfdom
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SRDFDOM_DEPEND_MK:=	${SRDFDOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-srdfdom
endif

ifeq (+,$(SRDFDOM_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-srdfdom?=	${PREFER.ros-base}
SYSTEM_PREFIX.ros-srdfdom?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		ros-srdfdom
ROS_DEPEND_USE+=		ros-srdfdom

DEPEND_ABI.ros-srdfdom?=	srdfdom>=0.4.2
DEPEND_DIR.ros-srdfdom?=	../../wip/ros-srdfdom

SYSTEM_SEARCH.ros-srdfdom=\
	include/srdfdom/model.h	\
	'lib/pkgconfig/srdfdom.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-srdfdom=  ${PREFIX.ros-srdfdom}

endif # SRDFDOM_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
