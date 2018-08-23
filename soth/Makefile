# robotpkg Makefile for:	wip/soth
# Created:			Aurelie Clodic on Thu, 30 Oct 2014
#

ORG=			stack-of-tasks
NAME=			soth
VERSION=		2.0.3

DISTNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		SOT Hierarchical solver
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../math/eigen3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
