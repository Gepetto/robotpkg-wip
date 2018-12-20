# robotpkg depend.mk for:	wip/ros-universal-robot
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
UNIVERSAL_ROBOT_DEPEND_MK:=	${UNIVERSAL_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-universal-robot
endif

ifeq (+,$(UNIVERSAL_ROBOT_DEPEND_MK)) # --------------------------------------

PREFER.ros-universal-robot?=	robotpkg

DEPEND_USE+=		ros-universal-robot

DEPEND_ABI.ros-universal-robot?=	universal-robot>=1.2.1
DEPEND_DIR.ros-universal-robot?=	../../wip/ros-universal-robot

SYSTEM_SEARCH.ros-universal-robot=\
	include/ur_msgs/SetIO.h	\
	'lib/pkgconfig/ur_description.pc:/Version/s/[^0-9.]//gp'

endif # UNIVERSAL_ROBOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
