# robotpkg Makefile for:	wip/py-sot-torque-control
# Created:			Olivier Stasse on Wed Feb 21 18:07:40 CET 2018
#

PKGREVISION=		1
ORG=			stack-of-tasks
NAME=			sot-torque-control
VERSION=		1.6.5

CATEGORIES=		wip
COMMENT=		Torque control for humanoids (python bindings)

CMAKE_ARGS+=		-DqpOASES_PREFIX=${PREFIX.qpoases}

USE_PYTHON_ONLY=	true

include ../../${CATEGORIES}/${NAME}/depend.mk
include ../../devel/jrl-cmakemodules/Makefile.common
include ../../graphics/urdfdom/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../optimization/qpoases/depend.mk
include ../../path/coal/depend.mk
include ../../robots/example-robot-data/depend.mk
include ../../robots/py-example-robot-data/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../optimization/tsid/depend.mk
include ../../optimization/py-tsid/depend.mk
include ../../wip/parametric-curves/depend.mk
include ../../wip/py-parametric-curves/depend.mk
include ../../wip/ddp-actuator-solver/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
