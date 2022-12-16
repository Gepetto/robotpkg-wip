# robotpkg Makefile for:	optimization/py38-quadruped-walkgen
# Created:			Guilhem Saurel on Fri, 16 Dec 2022
#

ORG=			loco-3d
NAME=			quadruped-walkgen
VERSION=		1.1.0

CATEGORIES=		optimization
COMMENT=		MPC Controller using Crocoddyl
LICENSE=		2-clause-bsd
MAINTAINER=		guilhem.saurel@laas.fr

USE_PYTHON=		true
PYTHON_SELF_CONFLICT=	yes

# parallel builds exhaust memory - until a better solution is found
MAKE_JOBS_SAFE=		no


include ../../devel/jrl-cmakemodules/Makefile.common

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../graphics/assimp/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../optimization/py-crocoddyl/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../robots/example-robot-data/depend.mk
include ../../robots/py-example-robot-data/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/py-scipy.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
