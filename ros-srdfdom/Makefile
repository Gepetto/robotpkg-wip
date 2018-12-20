# robotpkg Makefile for:	wip/ros-srdfdom
# Created:			Guilhem Saurel on Wed, 20 Dec 2018
#

ROS_PKG=		srdfdom
ROS_VERSION=	0.4.2
ROS_REPO=		ros-planning

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	srdf parser

include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-cmake-modules/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../wip/ros-py-urdf-parser/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
