# robotpkg Makefile for:	wip/sot-torque-control
# Created:			Olivier Stasse on Wed Feb 21 18:07:40 CET 2018
#

PKGNAME=		sot-torque-control-${VERSION}
DISTNAME=		sot-torque-control-${VERSION}
VERSION=		1.0.0
PKGREVISION=		2

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-torque-control/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/sot-torque-control
CHECKOUT_VCS_OPTS=	--recursive


MAINTAINER=	gepetto@laas.fr
CATEGORIES=	wip
COMMENT=	Torque control for humanoids
LICENSE=	2-clause-bsd

WRKSRC=		${WRKDIR}/${DISTNAME:a=}

DYNAMIC_PLIST_DIRS+=	share/doc/sot-torque-control

CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/tsid/depend.mk
include ../../wip/parametric-curves/depend.mk
include ../../wip/simple-humanoid-description/depend.mk
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
