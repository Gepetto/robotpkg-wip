# robotpkg Makefile for:	wip/dynamic-graph-tutorial
# Created:			Guilhem Saurel on Tue, 10 Jul 2018
#

ORG=			stack-of-tasks
NAME=			dynamic-graph-tutorial
VERSION=		1.3.3

CATEGORIES=		wip
COMMENT=		Tutorial for the dynamic-graph

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/dynamic-graph-v3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
