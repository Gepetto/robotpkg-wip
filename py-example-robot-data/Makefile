# robotpkg Makefile for:	wip/py-example-robot-data
# Created:			Guilhem Saurel on Wed, 28 Aug 2019
#

ORG=			gepetto
NAME=			example-robot-data
VERSION=		3.0.0

CATEGORIES=		wip
COMMENT=		Set of robot URDFs for benchmarking and developed examples.
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto@laas.fr

USE_PYTHON_ONLY=	true

DEPEND_ABI.cmake+=	cmake>=3.0.0

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../${CATEGORIES}/${NAME}/depend.mk

include ../../graphics/urdfdom-headers/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
