# robotpkg Makefile for:	wip/ros-ouster-gazebo-simulation
# Created:			Guilhem Saurel on Thu, 20 Feb 2020
#

ROS_REPO=	Gepetto
ROS_PKG=	ouster-gazebo-simulation
ROS_VERSION=	2.0.2
ROS_METAPKG=	yes
PKGREVISION=	1

PKGNAME=	ros-${ROS_PKG}-${ROS_VERSION}
DISTNAME?=	${ROS_VERSION}
ROS_PKGURL?=	${ROS_PKG}/archive/
MASTER_SITES?=	${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKGURL}}
DIST_SUBDIR?=	ros/${ROS_PKG}
ROS_GITTAG?=	${ROS_VERSION}
WRKSRC?=	${WRKDIR}/${ROS_PKG}-${ROS_GITTAG}

CATEGORIES=	wip
ROS_COMMENT=	the simulation of Ouster OS1-64 with ros and gazebo


include ../../interfaces/ros-common-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../middleware/ros-dynamic-reconfigure/depend.mk
include ../../wip/py-prf-gazebo-ros-pkgs/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
