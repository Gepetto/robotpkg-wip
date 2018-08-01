# robotpkg Makefile for:	wip/sot-tools-v3
# Created:			Guilhem Saurel on Mon, 1 Aug 2018
#

ORG=			stack-of-tasks
NAME=			sot-tools
VERSION=		2.0.3

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

MAINTAINER=		gepetto@laas.fr
CATEGORIES=		wip
LICENSE=		gnu-lgpl-v3
COMMENT=		tools for wip/sot-core-v3 package

CONFLICTS+=		sot-tools-v3-[0-9]*
CONFLICTS+=		sot-tools-[0-9]*
DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF  # doxygen segfaults on 14.04
CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

# disable -Werror, some warnings from boost-filesystem (1.50, netbsd) cannot be
# fixed here
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

include ../../wip/sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
