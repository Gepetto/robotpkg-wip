# robotpkg Makefile for:	wip/dynamic-graph-v3
# Created:			Rohan Budhiraja on Fri,  25 Jan 2016
#

ORG=			stack-of-tasks
NAME=			dynamic-graph
VERSION=		3.7.2

DISTNAME=		${NAME}-v3-${VERSION}
PKGNAME=		${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Efficient data-flow C++ library for robotics
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		${NAME}

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/gzip.mk
include ../../mk/sysdep/podlators.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
