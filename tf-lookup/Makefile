# robotpkg Makefile for:	wip/tf-lookup
# Created:			Olivier Stasse on Tue, 9 May 2018
#

ORG=			olivier-stasse
NAME=			tf-lookup
VERSION=		0.0.1
PKGREVISION=		1

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}

COMMENT=		Centralizes tf lookups for nodes that do not rely heavily  on tf and thus do not need a dedicated tfListener
LICENSE=		2-clause-bsd


USE_BOOST_LIBS=		thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
