# robotpkg Makefile for:	wip/talos-gazebo-ros-control
# Created:			Olivier Stasse on Mer, 3 May 2017
#
VERSION=	2.6.6
PKGNAME=	talos-gazebo-ros-control-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_gazebo_ros_control/}
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

CMAKE_ARGS+=\
  -Dgazebo_INCLUDE_DIRS=$(filter include/%,${SYSTEM_SEARCH.gazebo})	\
  -Dgazebo_LIBRARIES=$(filter %.so,${SYSTEM_SEARCH.gazebo})

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../wip/talos-ros-control/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../graphics/ros-robot-model/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
#include ../../mk/sysdep/gazebo.mk
include ../../mk/sysdep/libogre.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
