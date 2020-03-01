# robotpkg Makefile for:	wip/py-tsid
# Created:			Guilhem Saurel on Mon, 4 Mar 2019
#

ORG=			stack-of-tasks
NAME=			tsid
VERSION=		1.2.2

CATEGORIES=		wip
COMMENT=		Efficient Inverse Dynamics based on Pinocchio (python bindings)
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

USE_BOOST_LIBS=		unit_test_framework
USE_PYTHON=		yes

# this does not support multiple parallel python version
CONFLICTS+=		py[0-9][0-9]-${NAME}-[0-9]*

CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF
CMAKE_ARGS+=		-DINSTALL_GENERATED_HEADERS=OFF
CMAKE_ARGS+=		-DINSTALL_PKG_CONFIG_FILE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../${CATEGORIES}/${NAME}/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../mapping/octomap/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
