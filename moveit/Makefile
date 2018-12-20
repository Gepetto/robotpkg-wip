# robotpkg Makefile for:	wip/moveit
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		moveit
ROS_METAPKG=	yes
ROS_VERSION=	0.10.5
ROS_REPO=		ros-planning

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	The MoveIt! Motion Planning Framework


include ../../meta-pkgs/ros-base/Makefile.common

include ../../wip/moveit-resources/depend.mk
include ../../wip/moveit-msgs/depend.mk
include ../../wip/srdfdom/depend.mk
include ../../wip/ompl/depend.mk
include ../../wip/warehouse-ros/depend.mk
include ../../image/ros-image-common/depend.mk
include ../../interfaces/ros-control-msgs/depend.mk
#include ../../mapping/octomap/depend.mk
include ../../math/ros-geometry2/depend.mk
include ../../math/ros-eigen-stl-containers/depend.mk
include ../../motion/ros-control/depend.mk
include ../../graphics/ros-geometric-shapes/depend.mk
include ../../graphics/ros-interactive-markers/depend.mk
include ../../sysutils/ros-rviz/depend.mk

include ../../mk/sysdep/glew.mk
include ../../wip/mk/sysdep/fcl.mk

DEPEND_ABI.fcl +=	fcl>=0.5.0
#DEPEND_ABI.octomap +=	octomap>=1.8.0

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
