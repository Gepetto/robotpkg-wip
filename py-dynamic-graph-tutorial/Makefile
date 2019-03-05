# robotpkg Makefile for:	wip/py-dynamic-graph-tutorial
# Created:			Guilhem Saurel on Tue, 10 Jul 2018
#

ORG=			stack-of-tasks
NAME=			dynamic-graph-tutorial
VERSION=		1.1.2

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Tutorial for the dynamic-graph
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=	-DCMAKE_INSTALL_DOCDIR=share/doc/${PKGBASE}

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}
DYNAMIC_PLIST_DIRS+=	share/doc/${PKGTAG.python-}${NAME}

include ../../wip/${NAME}/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
