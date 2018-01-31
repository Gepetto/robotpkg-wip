# robotpkg Makefile for:	math/tsid
# Created:			Justin Carpentier on Thu, 16 June 2017
#

VERSION=		1.0.2
DISTNAME=		tsid-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${PKGBASE}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/${PKGBASE}

MAINTAINER=		gepetto@laas.fr
CATEGORIES=		math
COMMENT=		Efficient Inverse Dynamics based on Pinocchio
LICENSE=		gnu-lgpl-v3

# parallel builds would consume all memory because of the g++ process size
MAKE_JOBS_SAFE=		no

DYNAMIC_PLIST_DIRS+=	share/doc/${PKGBASE}

CMAKE_ARGS+=    -DCMAKE_INSTALL_LIBDIR=lib

CMAKE_ARGS+=		-DBUILD_UNIT_TESTS=ON
CMAKE_ARGS+=    -DINSTALL_DOCUMENTATION=OFF

USE_BOOST_LIBS=		unit_test_framework

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../wip/pinocchio/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

DEPEND_ABI.python +=		python<3
DEPEND_ABI.pinocchio +=	pinocchio>=1.2.4
DEPEND_ABI.eigen3 += eigen3>=3.2.0

include ../../mk/robotpkg.mk
