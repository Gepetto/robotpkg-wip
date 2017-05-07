# robotpkg Makefile for:	wip/talos-ros-control-sot
# Created:			Olivier Stasse on Fri, 5 May 2017
#

VERSION=	0.0.2
PKGBASE=	metapkg-talos-roscontrol-sot
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}

ROS_METAPKG=	yes

ROS_GITTAG=	${DISTNAME}
WRKSRC=		${WRKDIR}/${ROS_GITTAG}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/metapkg-talos-roscontrol-sot/}
COMMENT=	ros_control package for the SoT and specifically for Talos
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

#USE_BOOST_LIBS=	thread

include ../../meta-pkgs/ros-base/Makefile.common
CMAKE_PREFIX_PATH+= ${ROBOTPKG_BASE}

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
include ../../wip/talos-simulation/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../wip/talos-simulation/depend.mk
include ../../wip/dynamic-graph-bridge-v3/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
