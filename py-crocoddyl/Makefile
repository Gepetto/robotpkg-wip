# robotpkg Makefile for:	wip/py-crocoddyl-api
# Created:			Guilhem Saurel on Wed, 03 Apr 2019
#

ORG=			loco-3d
NAME=			crocoddyl
VERSION=		1.2.0

CATEGORIES=		wip
COMMENT=		Contact RObot COntrol by Differential DYnamic programming Library
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		py[0-9][0-9]-crocoddyl

USE_PYTHON=		true

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/mk/sysdep/py-scipy.mk
include ../../wip/example-robot-data/depend.mk
include ../../wip/py-example-robot-data/depend.mk
include ../../wip/py-quadprog/depend.mk
include ../../graphics/assimp/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk

include ../../mk/robotpkg.mk
