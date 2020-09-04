# robotpkg Makefile for:	wip/sot-dynamic-pinocchio-v3
# Created:			Rohan Budhiraja on Fri, 8 Apr 2016
#

ORG=			stack-of-tasks
NAME=			sot-dynamic-pinocchio
VERSION=		3.6.0

DISTNAME=		${NAME}-v3-${VERSION}
PKGNAME=		${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		Create entities to compute a robot dynamics properties using pinocchio

CONFLICTS+=		${NAME}

# parallel builds would consume all memory because of the g++ process size
MAKE_JOBS_SAFE=		no

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/tinyxml/depend.mk
include ../../math/pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../mapping/octomap/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/sot-tools-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
