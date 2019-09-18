# robotpkg Makefile for:	wip/ddp-actuator-solver
# Created:		 	Olivier Stasse on Thu, 9 May 2019
#

ORG=			stack-of-tasks
NAME=			ddp-actuator-solver
VERSION=		1.0.0

CATEGORIES=		wip
COMMENT=		Differentiable Dynamics Programming for one actuator
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

USE_BOOST_LIBS=		unit_test_framework

include ../../wip/jrl-cmakemodules/Makefile.common
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../optimization/qpoases/depend.mk
include ../../math/eigen3/depend.mk
include ../../mapping/octomap/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
