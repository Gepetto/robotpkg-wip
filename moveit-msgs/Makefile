# robotpkg Makefile for:	wip/moveit
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		moveit_msgs
ROS_VERSION=	0.10.0
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
