# robotpkg Makefile for:	wip/sot-tools-v3
# Created:			Guilhem Saurel on Mon, 1 Aug 2018
#

ORG=			stack-of-tasks
NAME=			sot-tools
VERSION=		2.3.0

PKGNAME=		${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		tools for the sot-core package

CONFLICTS+=		${NAME}

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF
CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF  # doxygen segfaults on 14.04

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/sot-core-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../mapping/octomap/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
