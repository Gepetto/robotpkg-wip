# robotpkg Makefile for:	path/jrl-walkgen
# Created:			Anthony Mallet on Tue, 15 May 2007
#

DISTNAME=	jrl-walkgen-v3-${VERSION}
PKGNAME=	jrl-walkgen-v3-${VERSION}
VERSION=	4.0.2
PKGREVISION=	2

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/jrl-walkgen/

MAINTAINER=	gepetto@laas.fr
COMMENT=	Walk pattern generator for the HRP-2 humanoid robot.
LICENSE=	gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/jrl-walkgen

PKG_SUPPORTED_OPTIONS+= debug
PKG_OPTION_DESCR.debug=	Compile in debugging mode
PKG_OPTION_SET.debug:=	CMAKE_ARGS+= -DCMAKE_BUILD_TYPE=Debug

# Build the package in a separate directory
CONFIGURE_DIRS=		_build
CMAKE_ARG_PATH=		..
CMAKE_ARGS+=    -DCMAKE_INSTALL_LIBDIR=lib

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/_build

include ../../mk/sysdep/cmake.mk
include ../../math/pinocchio/depend.mk
include ../../wip/eigen-quadprog/depend.mk
include ../../wip/simple-humanoid-description/depend.mk
include ../../interfaces/jrl-mal/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/language/fortran.mk
include ../../mk/robotpkg.mk
