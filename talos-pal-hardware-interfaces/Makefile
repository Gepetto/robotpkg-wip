# robotpkg Makefile for:	wip/talos-pal-hardware-interfaces
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

VERSION=	0.0.2
PKGNAME=	talos-pal-hardware-interfaces-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/$(subst -,_,${PKGBASE})/}
COMMENT=	Hardware interfaces developped by PAL-Robotics
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
include ../../wip/talos-ros-control/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
