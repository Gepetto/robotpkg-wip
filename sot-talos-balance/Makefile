# robotpkg Makefile for:	wip/sot-talos-balance
# Created:			Olivier Stasse on Wed Feb 21 18:07:40 CET 2018
#

ORG=			stack-of-tasks
NAME=			sot-talos-balance
VERSION=		2.0.0

CATEGORIES=		wip
COMMENT=		Balance for TALOS humanoid robot

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF
CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../math/eiquadprog/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../graphics/simple-humanoid-description/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
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
