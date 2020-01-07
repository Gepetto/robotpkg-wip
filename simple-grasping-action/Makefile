# robotpkg Makefile for:	wip/simple-grasping-action
# Created:			Olivier Stasse on Thu, 12 Dec 2018
#
ORG=		pal-robotics
VERSION=	1.0.1
PKGBASE=	simple-grasping-action
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}
PKGREVISION=	2

CATEGORIES=	wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE= 	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	PAL package providing ros action for simple grasping
LICENSE=	gnu-gpl-v3

USE_BOOST_LIBS=	thread


ONLY_FOR_PLATFORM=	Ubuntu-16.04-% Ubuntu-18.04-%

CMAKE_PREFIX_PATH+=${PREFIX}
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
