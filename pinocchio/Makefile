# robotpkg Makefile for:	wip/pinocchio
# Created:			Olivier Stasse, Feb 4th 2016
# Updated:      Justin Carpentier, May 30th 2016

VERSION=		1.1.2
DISTNAME=		pinocchio-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=pinocchio/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/pinocchio

MAINTAINER=	pinocchio@laas.fr
CATEGORIES=	wip
COMMENT=	Efficient rigid body dynamics
LICENSE=	gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/pinocchio
USE_BOOST_LIBS:= python system filesystem unit_test_framework

CMAKE_ARGS+=    -DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=    -DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=    -DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=    -DPYTHON_SITELIB=${PYTHON_SITELIB}

DEPEND_ABI.python += python<3
DEPEND_ABI.assimp += assimp>=3.0
DEPEND_ABI.eigenpy += eigenpy>=1.3.0
DEPEND_ABI.hpp-fcl += hpp-fcl>=0.4.1
PREFER.assimp = robotpkg

# We must use eigen from robotpkg at least for Ubuntu 16.04
ifeq (Ubuntu,${OPSYS})
  ifeq (,$(filter 16.04,${OS_VERSION}))
    PREFER.eigen = robotpkg
  else
    PREFER.eigen = system
  endif
endif

include ../../wip/py-eigen/depend.mk
include ../../math/eigen3/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../graphics/urdfdom-headers/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../graphics/assimp/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
