# robotpkg Makefile for:	wip/tiago-moveit-config
# Created:			Olivier Stasse on Tue, 9 May 2018
#

ORG=			pal-robotics
VERSION=		1.0.2
PKGBASE=		tiago-moveit-config
DISTNAME=		${VERSION}
PKGNAME=		${PKGBASE}-${VERSION}
ROSNAME=		$(subst -,_,${PKGBASE})
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=		${PKGBASE}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
COMMENT=		An automatically generated package with all the configuration and launch files
LICENSE=		2-clause-bsd

USE_BOOST_LIBS=	thread

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
