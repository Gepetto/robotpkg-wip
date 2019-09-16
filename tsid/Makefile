# robotpkg Makefile for:	wip/tsid
# Created:			Justin Carpentier on Thu, 16 June 2017
#

ORG=			stack-of-tasks
NAME=			tsid
VERSION=		1.2.1

CATEGORIES=		wip
COMMENT=		Efficient Inverse Dynamics based on Pinocchio
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

USE_BOOST_LIBS=		unit_test_framework

include ../../wip/jrl-cmakemodules/Makefile.common
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../mapping/octomap/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
