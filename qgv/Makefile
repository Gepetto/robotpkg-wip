# robotpkg Makefile for:	wip/qgv
# Created:			Guilhem Saurel on Thu, 24 Jan 2019
#

ORG=			gepetto
NAME=			qgv
VERSION=		1.1.0

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.qt-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	git https://github.com/${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Interactive Qt graphViz display
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gsaurel@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/qt.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
