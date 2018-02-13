# robotpkg Makefile for:	wip/talos-pal-hardware-gazebo
# Created:			Olivier Stasse on Thu, 3 May 2017
#

VERSION=	0.0.10
PKGNAME=	talos-pal-hardware-gazebo-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}
PKGREVISION=	1

CATEGORIES=	wip
MASTER_SITES=  ${MASTER_SITE_JRL:=talos/$(subst -,_,${PKGBASE})/}
COMMENT=	Hardware interfaces developped by PAL-Robotics in Gazebo
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/talos-pal-hardware-interfaces/depend.mk
include ../../wip/talos-gazebo-ros-control/depend.mk
include ../../wip/talos-ros-control/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
