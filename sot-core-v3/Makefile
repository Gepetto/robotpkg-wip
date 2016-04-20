# robotpkg Makefile for:	motion/sot-core3
# Created:			Rohan Budhiraja on Wed Dec 16 15:33:40 CET 2015
#

PKGNAME=		sot-core-v3-${VERSION}
DISTNAME=		sot-core-v3-${VERSION}
VERSION=		3.0.0
PKGREVISION=		3

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-core-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/proyan/sot-core
CHECKOUT_VCS_OPTS=	--recursive

MAINTAINER=	gepetto@laas.fr
CATEGORIES=	wip
COMMENT=	Hierarchical task based control of humanoid robots
LICENSE=	gnu-lgpl-v3

WRKSRC=		${WRKDIR}/${DISTNAME:a=}

DYNAMIC_PLIST_DIRS+=	share/doc/sot-core-v3

CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

# Build the package in a separate directory
CONFIGURE_DIRS=		_build
CMAKE_ARG_PATH=		..

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/_build
