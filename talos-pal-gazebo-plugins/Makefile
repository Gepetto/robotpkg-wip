# robotpkg Makefile for:	wip/talos-pal-gazebo-plugins
# Created:			Olivier Stasse on Fri, 21 Apr 2017
#
VERSION=	1.1.5
PKGBASE=	talos-pal-gazebo-plugins
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}
PKGVERSION=	1
ROS_GITTAG=	${DISTNAME}
WRKSRC=		${WRKDIR}/${ROS_GITTAG}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_pal_gazebo_plugins/}
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

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
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

