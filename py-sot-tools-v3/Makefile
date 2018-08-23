# robotpkg Makefile for:	wip/py-sot-tools-v3
# Created:			Olivier Stasse on Mon, 15 Apr 2013
#

ORG=			stack-of-tasks
NAME=			sot-tools
VERSION=		2.1.0

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		tools for the sot-core package (python bindings)
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		py[0-9][0-9]-${NAME}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF  # doxygen segfaults on 14.04

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../${CATEGORIES}/${NAME}-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
