# robotpkg Makefile for:	wip/ros-octomap-msgs
# Created:			Guilhem Saurel on Wed, 20 Dec 2018
#

ROS_PKG=		octomap_msgs
ROS_VERSION=		0.3.3
ROS_REPO=		octomap
PKGREVISION=		1

PKGNAME=		ros-$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=		ROS package to provide messages and serializations / conversion for the OctoMap library

include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
