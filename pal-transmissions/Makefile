# robotpkg Makefile for:	wip/pal-transmissions
# Created:			Olivier Stasse on Tues, 18 April 2017
#

VERSION=	0.2.2
PKGBASE=	pal-transmissions
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
DIST_SUBDIR=	${PKGBASE}
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
PKGREVISION=	1

CATEGORIES=	wip
# Source file store in robotpkg website
#MASTER_SITES=	${MASTER_SITE_JRL:=talos/$(subst -,_,${PKGBASE})/}

HOMEPAGE = 	${MASTER_SITE_GITHUB:=pal-robotics/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/

COMMENT=	Hardware transmissions developped by PAL-Robotics
LICENSE=	2-clause-bsd


USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/prf-ros-control/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
