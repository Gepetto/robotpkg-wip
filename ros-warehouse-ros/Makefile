# robotpkg Makefile for:	wip/ros-warehouse-ros
# Created:			Guilhem Saurel on Wed, 20 Dec 2018
#

ROS_PKG=		warehouse_ros
ROS_VERSION=	0.9.2
ROS_REPO=		ros-planning

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	ROS messages specific to MoveIt!

include ../../meta-pkgs/ros-base/Makefile.common
include ../../wip/ros-object-recognition-msgs/depend.mk
include ../../wip/ros-octomap-msgs/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-cpp-core/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../math/ros-geometry/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/googletest.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
