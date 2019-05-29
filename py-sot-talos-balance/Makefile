# robotpkg Makefile for:	wip/py-sot-talos-balance
# Created:			Olivier Stasse on Sat May 25 23:01:40 CET 2019
#

ORG=				stack-of-tasks
NAME=				sot-talos-balance
VERSION=			1.4.0

DISTNAME=			${NAME}-${VERSION}
PKGNAME=			${PKGTAG.python-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS=	--recursive

CATEGORIES=			wip
COMMENT=			Balance for TALOS humanoid robot (python bindings)
LICENSE=			2-clause-bsd
MAINTAINER=			gepetto-soft@laas.fr

CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF
CMAKE_ARGS+=		-DINSTALL_PYTHON_INTERFACE_ONLY=ON
CMAKE_ARGS+= 		-DBUILD_PYTHON_INTERFACE=ON

include ../../${CATEGORIES}/${NAME}/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../graphics/simple-humanoid-description/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../wip/tsid/depend.mk
include ../../wip/py-tsid/depend.mk
include ../../wip/parametric-curves/depend.mk
include ../../wip/py-parametric-curves/depend.mk
include ../../wip/ddp-actuator-solver/depend.mk
include ../../wip/eigen-quadprog/depend.mk
include ../../wip/sot-torque-control/depend.mk
include ../../wip/py-sot-torque-control/depend.mk
include ../../wip/sot-talos-balance/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
