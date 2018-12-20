# robotpkg Makefile for:	wip/octomap-msgs
# Created:			Guilhem Saurel on Wed, 20 Dec 2018
#

ROS_PKG=		octomap_msgs
ROS_VERSION=	0.3.3
ROS_REPO=		octomap

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	ROS messages specific to MoveIt!

include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
