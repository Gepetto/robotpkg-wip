# robotpkg depend.mk for:	wip/aruco-ros
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ARUCO_ROS_DEPEND_MK:=	${ARUCO_ROS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			prf-aruco-ros
endif

ifeq (+,$(ARUCO_ROS_DEPEND_MK)) # ----------------------------------

PREFER.aruco-ros?=	robotpkg

DEPEND_USE+=			prf-aruco-ros

DEPEND_ABI.prf-aruco-ros?=	prf-aruco-ros>=0.2.8
DEPEND_DIR.prf-aruco-ros?=	../../wip/prf-aruco-ros

SYSTEM_SEARCH.prf-aruco-ros=\
  'include/aruco/aruco.h'		\
  'lib/libaruco_ros_utils.so'		\
  'share/aruco/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/aruco.pc:/Version/s/[^0-9.]//gp'  \
  'share/aruco/cmake/arucoConfig.cmake'

endif # ARUCO_ROS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
