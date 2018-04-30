# robotpkg Makefile for:	wip/dynamic_introspection
# Created:			Olivier Stasse on Fr, 27 Apr 2018
#

VERSION=	1.0.5
PKGBASE= 	dynamic-introspection
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
HOMEPAGE=	${MASTER_SITE_GITHUB:=pal-robotics/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Package to record all data from control thus perform introspection
LICENSE=	pal-license

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../wip/backward-ros/depend.mk

include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
