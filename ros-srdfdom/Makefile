# robotpkg Makefile for:	wip/ros-srdfdom
# Created:			Guilhem Saurel on Wed, 20 Dec 2018
#

ROS_PKG=		srdfdom
ROS_VERSION=		0.4.2
ROS_REPO=		ros-planning
PKGREVISION=		1

PKGNAME=		ros-$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=		srdf parser

include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-cmake-modules/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../wip/ros-py-urdf-parser/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../sysutils/ros-console-bridge/depend.mk
include ../../graphics/urdfdom-headers/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../devel/tinyxml/depend.mk
include ../../graphics/ros-urdf/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
