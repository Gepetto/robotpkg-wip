# robotpkg Makefile for:	wip/pal-gazebo-worlds
# Created:			Guilhem Saurel on Fri, 13 Apr 2018
#

VERSION=	2.0.4
PKGBASE=	pal-gazebo-worlds
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
HOMEPAGE=		${MASTER_SITE_GITHUB:=pal-robotics/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Simulation worlds for PAL robots
LICENSE=	pal-license

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../simulation/gazebo-ros-pkgs/depend.mk

include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
