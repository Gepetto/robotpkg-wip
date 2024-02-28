# robotpkg Makefile for:	wip/head-action
# Created:			Olivier Stasse on Tue, 01 May 2018
#

ORG=			pal-robotics
NAME=			head-action
VERSION=		0.0.1
PKGREVISION=		5

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}

COMMENT=		Robot agnostic head action interface
LICENSE=		2-clause-bsd


USE_BOOST_LIBS=		thread

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../graphics/ros-kdl-parser/depend.mk
include ../../interfaces/ros-control-msgs/depend.mk
include ../../motion/orocos-kdl/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
