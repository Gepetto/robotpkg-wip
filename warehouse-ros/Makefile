# robotpkg Makefile for:	wip/warehouse-ros
# Created:			Guilhem Saurel on Wed, 20 Dec 2018
#

ROS_PKG=		warehouse_ros
ROS_VERSION=	0.9.2
ROS_REPO=		ros-planning

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	ROS messages specific to MoveIt!

include ../../meta-pkgs/ros-base/Makefile.common
include ../../wip/object-recognition-msgs/depend.mk
include ../../wip/octomap-msgs/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
