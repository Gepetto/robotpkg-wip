# robotpkg Makefile for:	wip/talos-pal-transmissions
# Created:			Olivier Stasse on Tues, 18 April 2017
#

VERSION=	0.2.3
PKGNAME=	talos-pal-transmissions-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/$(subst -,_,${PKGBASE})/}
COMMENT=	Hardware transmissions developped by PAL-Robotics
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

CMAKE_PREFIX_PATH+= ${ROBOTPKG_BASE}
$(info Display something for talos-ros-controllers ${CMAKE_PREFIX_PATH})

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
