# robotpkg depend.mk for:	wip/ros-universal-robot
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_UNIVERSAL_ROBOT_DEPEND_MK:=	${ROS_UNIVERSAL_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-universal-robot
endif

ifeq (+,$(ROS_UNIVERSAL_ROBOT_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
include ../../mk/robotpkg.prefs.mk
ifeq (18.04,${OS_VERSION})
  PREFER.ros-universal-robot?=		robotpkg
else
  PREFER.ros-universal-robot?=		${PREFER.ros-base}
  SYSTEM_PREFIX.ros-universal-robot?=	${SYSTEM_PREFIX.ros-base}
endif

DEPEND_USE+=				ros-universal-robot
ROS_DEPEND_USE+=			ros-universal-robot

DEPEND_ABI.ros-universal-robot?=	ros-universal-robot>=1.2.1
DEPEND_DIR.ros-universal-robot?=	../../wip/ros-universal-robot

SYSTEM_SEARCH.ros-universal-robot=\
	'share/universal_robot/package.xml:/<version>/s/[^0-9.]//gp'

endif # ROS_UNIVERSAL_ROBOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
