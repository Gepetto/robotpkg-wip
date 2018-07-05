# robotpkg Makefile for:	hardware/infuse-novatel-gps-driver-ros
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

NAME=				infuse-novatel-gps-driver-ros
VERSION=			0.1.0
CATEGORIES=			hardware
DISTNAME=			${NAME}-${VERSION}
MASTER_SITES=		http://homepages.laas.fr/emendes/infuse/
MASTER_REPOSITORY=	git ssh://git@redmine.laas.fr/laas/users/simon/infuse/infuse-novatel-gps-driver.git

MAINTAINER=			laas-infuse@laas.fr
COMMENT=			A C++ ROS driver for NovAtel GPS / GNSS Receivers with a layer for the InFuse project
LICENSE=			modified-bsd

CONFIGURE_DIRS+= ${WRKSRC}/novatel_gps_msgs
CONFIGURE_DIRS+= ${WRKSRC}/novatel_gps_driver



include ../../devel/boost-libs/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/libpcap.mk
include ../../sysutils/ros-diagnostics/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../devel/ros-nodelet-core/depend.mk
include ../../wip/ros-gps-umd/depend.mk
# NOTE in robotpkg, roscpp is packaged inside middleware/ros-comm
include ../../middleware/ros-comm/depend.mk
include ../../sysutils/ros-console-bridge/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/cmake.mk

include ../../wip/ros-swri-math-util/depend.mk
include ../../wip/ros-swri-nodelet/depend.mk
include ../../wip/ros-swri-roscpp/depend.mk
include ../../wip/ros-swri-serial-util/depend.mk
include ../../wip/ros-swri-string-util/depend.mk

include ../../mk/robotpkg.mk
