# robotpkg Makefile for:	wip/dynamic_introspection
# Created:			Olivier Stasse on Fr, 27 Apr 2018
#

ORG=		pal-robotics
VERSION=	1.0.12
PKGBASE= 	dynamic-introspection
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE= 	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Package to record all data from control thus perform introspection

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../wip/backward-ros/depend.mk
include ../../wip/py-pal-statistics/depend.mk

include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
