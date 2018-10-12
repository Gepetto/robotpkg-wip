# robotpkg Makefile for:	wip/sot-tools-v3
# Created:			Guilhem Saurel on Mon, 1 Aug 2018
#

ORG=			stack-of-tasks
NAME=			sot-tools
VERSION=		2.1.0

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		tools for the sot-core package
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		${NAME}

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF  # doxygen segfaults on 14.04

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../wip/sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
