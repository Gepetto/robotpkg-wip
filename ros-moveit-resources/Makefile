# robotpkg Makefile for:	wip/ros-moveit
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		moveit_resources
ROS_VERSION=	0.6.4
ROS_REPO=		ros-planning

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	various resources needed for MoveIt! testing.

include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
