# robotpkg Makefile for:	wip/pal-gazebo-worlds
# Created:			Guilhem Saurel on Fri, 13 Apr 2018
#

VERSION=	2.0.8
PKGBASE=	pal-gazebo-worlds
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Simulation worlds for PAL robots
LICENSE=	gnu-lgpl-v3

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../wip/prf-gazebo-ros-pkgs/depend.mk

include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
