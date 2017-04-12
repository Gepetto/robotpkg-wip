# robotpkg Makefile for:	wip/sot-dynamic-pinocchio
# Created:			Rohan Budhiraja on Fri, 8 Apr 2016
#

VERSION=		3.1.4
PKGREVISION=		1
DISTNAME=		sot-dynamic-pinocchio-v3-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-dynamic-pinocchio-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/sot-dynamic-pinocchio/


MAINTAINER=	gepetto@laas.fr
CATEGORIES=	wip
LICENSE=	gnu-lgpl-v3
COMMENT=	Create entities to compute a robot dynamics properties

# parallel builds would consume all memory because of the g++ process size
MAKE_JOBS_SAFE=		no

DYNAMIC_PLIST_DIRS+=	share/doc/sot-dynamic-pinocchio
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_PATH=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

CONFLICTS+=		sot-dynamic
CONFLICTS+=		sot-dynamic-v3
# Build the package in a separate directory
CONFIGURE_DIRS=		_build
CMAKE_ARG_PATH=		..

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/_build

DEPEND_ABI.python+= python<3.0

include ../../wip/pinocchio/depend.mk
include ../../wip/py-sot-tools-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/tinyxml.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
