# robotpkg Makefile for:	wip/sot-pattern-generator-v3
# Created:			Olivier Stasse on Thu, 18 Apr 2013
#

ORG=			stack-of-tasks
NAME=			sot-pattern-generator
VERSION=		3.4.2

PKGNAME=		${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		Walking Pattern Generator

CONFLICTS+=		${NAME}

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../math/pinocchio/depend.mk
include ../../wip/jrl-walkgen-v3/depend.mk
include ../../math/eigen-quadprog/depend.mk
include ../../robots/example-robot-data/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
