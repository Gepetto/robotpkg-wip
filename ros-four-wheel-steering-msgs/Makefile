# robotpkg Makefile for:	wip/ros-four-wheel-steering-msgs
# Created:			Guilhem Saurel on Mon, 27 Jan 2020
#

ROS_PKG=		four_wheel_steering_msgs
ROS_VERSION=		1.0.0
ROS_REPO=		ros-drivers

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKG}}
MASTER_SITES=		${HOMEPAGE}/archive/
MASTER_REPOSITORY=	git ${HOMEPAGE}.git

CATEGORIES=		wip
ROS_COMMENT=		ROS messages for vehicles using four wheel steering.

include ../../meta-pkgs/ros-base/Makefile.common

include ../../lang/ros-message-generation/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
