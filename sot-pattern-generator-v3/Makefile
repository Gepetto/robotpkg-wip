# robotpkg Makefile for:	motion/sot-pattern-generator
# Created:			Olivier Stasse on Thu, 18 Apr 2013
#

VERSION=		3.0.0
PKG_REVISION=		1.0
DISTNAME=		sot-pattern-generator-v3-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-pattern-generator-v3/}
MASTER_REPOSITORY=\
	${MASTER_REPOSITORY_GITHUB}proyan/sot-pattern-generator/

MAINTAINER=		gepetto@laas.fr
CATEGORIES=		wip
COMMENT=		Walking Pattern Generator
LICENSE=		gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/sot-pattern-generator

CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../wip/pinocchio/depend.mk
include ../../wip/jrl-walkgen-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/sot-application-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
