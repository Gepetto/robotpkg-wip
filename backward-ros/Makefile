# robotpkg Makefile for:	wip/backward_ros
# Created:			Olivier Stasse on Fr, 27 Apr 2018
#

VERSION=	0.1.6
PKGBASE= 	backward-ros
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}

CATEGORIES=	wip
HOMEPAGE=	${MASTER_SITE_GITHUB:=pal-robotics/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/

COMMENT=	The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp
LICENSE=	mit

include ../../devel/ros-catkin/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
