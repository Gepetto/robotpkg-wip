# robotpkg Makefile for:	wip/dynamic-graph-v3
# Created:			Rohan Budhiraja on Fri,  25 Jan 2016
#

ORG=			stack-of-tasks
NAME=			dynamic-graph
VERSION=		4.3.0

DISTNAME=		${NAME}-v3-${VERSION}
PKGNAME=		${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		Efficient data-flow C++ library for robotics

CONFLICTS+=		${NAME}

CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=ON
CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF

include ../../devel/jrl-cmakemodules/Makefile.common
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
