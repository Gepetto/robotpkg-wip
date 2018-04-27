# robotpkg Makefile for:	wip/talos-pal-hardware-interfaces
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

VERSION=	0.0.3
PKGBASE=	pal-hardware-interfaces
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}

CATEGORIES=	wip
HOMEPAGE=	${MASTER_SITE_GITHUB:=pal-robotics/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Hardware interfaces developped by PAL-Robotics
LICENSE=	pal-license


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
