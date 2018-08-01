# robotpkg Makefile for:	wip/py-sot-tools-v3
# Created:			Olivier Stasse on Mon, 15 Apr 2013
#

ORG=			stack-of-tasks
NAME=			sot-tools
VERSION=		2.0.3

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

MAINTAINER=		gepetto@laas.fr
CATEGORIES=		wip
LICENSE=		gnu-lgpl-v3
COMMENT=		Python tools for wip/sot-core-v3 package

CONFLICTS+=		py[0-9][0-9]-sot-tools-v3-[0-9]*
CONFLICTS+=		py[0-9][0-9]-sot-tools-[0-9]*
DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF  # doxygen segfaults on 14.04

# disable -Werror, some warnings from boost-filesystem (1.50, netbsd) cannot be
# fixed here
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

DEPEND_ABI.python+=	python<3

include ../../wip/sot-core-v3/depend.mk
#include ../../wip/py-sot-core-v3/depend.mk TODO
include ../../wip/sot-tools-v3/depend.mk
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
