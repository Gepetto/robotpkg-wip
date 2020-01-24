# robotpkg Makefile for:	wip/ros-pcl-msgs
# Created:			Guilhem Saurel on Fri, 24 Jan 2020
#

ROS_PKG=		pcl_msgs
ROS_VERSION=		0.2.0
ROS_REPO=		ros-perception

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKG}}
MASTER_SITES=		${HOMEPAGE}/archive/
MASTER_REPOSITORY=	git ${HOMEPAGE}.git

CATEGORIES=		wip
ROS_COMMENT=		ROS package containing PCL-related messages

include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/ros-common-msgs/depend.mk
include ../../middleware/ros-comm/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
