# robotpkg Makefile for:	wip/talos-roboticsgroup-gazebo-plugins
# Created:			Olivier Stasse on Fri, 21 Apr 2017
#
VERSION=	0.0.3
PKGNAME=	talos-roboticsgroup-gazebo-plugins-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_roboticsgroup_gazebo_plugins/}
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

CMAKE_ARGS+=\
  -Dgazebo_INCLUDE_DIRS=$(filter include/%,${SYSTEM_SEARCH.gazebo})	\
  -Dgazebo_LIBRARIES=$(filter %.so,${SYSTEM_SEARCH.gazebo})

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
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
include ../../simulation/gazebo-ros-pkgs/depend.mk
include ../../wip/talos-gazebo-ros-control/depend.mk
include ../../wip/talos-pal-hardware-interfaces/depend.mk
include ../../mk/sysdep/gazebo.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
