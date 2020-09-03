# robotpkg Makefile for:	wip/sot-torque-control
# Created:			Olivier Stasse on Wed Feb 21 18:07:40 CET 2018
#

ORG=			stack-of-tasks
NAME=			sot-torque-control
VERSION=		1.6.0

CATEGORIES=		wip
COMMENT=		Torque control for humanoids

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF
CMAKE_ARGS+=		-DqpOASES_PREFIX=${PREFIX.qpoases}

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../graphics/simple-humanoid-description/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../optimization/qpoases/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../optimization/tsid/depend.mk
include ../../wip/parametric-curves/depend.mk
include ../../wip/ddp-actuator-solver/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
