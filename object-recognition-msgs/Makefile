# robotpkg Makefile for:	wip/moveit
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		object_recognition_msgs
ROS_VERSION=	0.4.1
ROS_REPO=		wg-perception

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	ROS messages/actionlib server for object recognition

include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/ros-common-msgs/depend.mk
include ../../middleware/ros-genmsg/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
