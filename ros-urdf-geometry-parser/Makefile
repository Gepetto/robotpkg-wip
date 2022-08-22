# robotpkg Makefile for:	wip/ros-urdf-geometry-parser
# Created:			Guilhem Saurel on Mon, 27 Jan 2020
#

ROS_PKG=		urdf_geometry_parser
ROS_VERSION=		0.0.3
ROS_REPO=		ros-controls

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKG}}
MASTER_REPOSITORY=	git ${HOMEPAGE}.git

CATEGORIES=		wip
ROS_COMMENT=		Extract geometry value of a vehicle from urdf

include ../../meta-pkgs/ros-base/Makefile.common

include ../../graphics/ros-urdf/depend.mk
include ../../math/ros-geometry2/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
