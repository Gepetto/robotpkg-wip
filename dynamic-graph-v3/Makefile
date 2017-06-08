# robotpkg Makefile for:	wip/dynamic-graph3
# Created:			Rohan Budhiraja on Fri,  25 Jan 2016
#
PKG_NAME=		dynamic-graph-v3
VERSION=		3.0.1
DISTNAME=		${PKG_NAME}-${VERSION}
PKGREVISION=		0

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=dynamic-graph-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/dynamic-graph
CHECKOUT_VCS_OPTS=	--recursive

COMMENT=		Efficient data-flow C++ library for robotics
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto@laas.fr

CONFLICTS+=		dynamic-graph
DYNAMIC_PLIST_DIRS+=	share/doc/dynamic-graph

# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}
# library location
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/gzip.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/podlators.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
