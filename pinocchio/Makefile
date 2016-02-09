# robotpkg Makefile for:	wip/pinocchio
# Created:			Olivier Stasse, Feb 4th 2016
#

VERSION=		1.1.0
DISTNAME=		pinocchio-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=pinocchio/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/pinocchio

MAINTAINER=	hpp@laas.fr
CATEGORIES=	wip
COMMENT=	Efficient rigid body dynamics
LICENSE=	gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/pinocchio
USE_BOOST_LIBS:= python filesystem unit_test_framework

DEPEND_ABI.python += python<3
DEPEND_ABI.assimp += assimp>=3.0
DEPEND_ABI.eigenpy += eigenpy>=1.3.0
PREFER.assimp = robotpkg

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
