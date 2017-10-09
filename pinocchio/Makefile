# robotpkg Makefile for:	math/pinocchio
# Created:			Olivier Stasse on Thu, 4 Feb 2016
#

VERSION=		1.2.5
DISTNAME=		pinocchio-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${PKGBASE}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/${PKGBASE}

MAINTAINER=		gepetto@laas.fr
CATEGORIES=		math
COMMENT=		Efficient rigid body dynamics
LICENSE=		gnu-lgpl-v3

# parallel builds would consume all memory because of the g++ process size
MAKE_JOBS_SAFE=		no

DYNAMIC_PLIST_DIRS+=	share/doc/${PKGBASE}

CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
CMAKE_ARGS+=    -DCMAKE_INSTALL_LIBDIR=lib

CMAKE_ARGS+=		-DBUILD_BENCHMARK=OFF
CMAKE_ARGS+=		-DBUILD_UNIT_TESTS=ON
CMAKE_ARGS+=		-DBUILD_UTILS=OFF
CMAKE_ARGS+=		-DBUILD_TESTS_WITH_HPP=OFF
CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=ON
CMAKE_ARGS+=    -DINSTALL_DOCUMENTATION=OFF

CHECKOUT_VCS_OPTS = --recursive 

USE_BOOST_LIBS=		python system filesystem unit_test_framework

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../math/eigen3/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../wip/py-eigen/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

DEPEND_ABI.python +=		python<3
DEPEND_ABI.urdfdom +=	urdfdom>=0.2.3

include ../../mk/robotpkg.mk
