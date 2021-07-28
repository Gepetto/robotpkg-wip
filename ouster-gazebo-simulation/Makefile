# robotpkg Makefile for:	wip/ros-ouster-gazebo-simulation
# Created:			Guilhem Saurel on Thu, 20 Feb 2020
#

ORG=		Gepetto
NAME=		ouster-gazebo-simulation
VERSION=	2.1.0

CATEGORIES=	wip
COMMENT=	the simulation of Ouster OS1-64 with ros and gazebo

CONFIGURE_DIRS=		build
CMAKE_ARG_PATH=		..

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/build

include ../../devel/jrl-cmakemodules/Makefile.common

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
