# robotpkg Makefile for:	wip/sot-core-v3
# Created:			Rohan Budhiraja on Wed Dec 16 15:33:40 CET 2015
#

ORG=			stack-of-tasks
NAME=			sot-core
VERSION=		4.2.0

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Hierarchical task based control of humanoid robots
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		${NAME}

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../mapping/octomap/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
