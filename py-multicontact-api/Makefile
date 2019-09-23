# robotpkg Makefile for:	wip/py-multicontact-api
# Created:			Guilhem Saurel on Thu, 28 Mar 2019
#

ORG=			loco-3d
NAME=			multicontact-api
VERSION=		1.1.1

PKGNAME=		${PKGTAG.python-}${DISTNAME}

CATEGORIES=		wip
COMMENT=		Multi-contact locomotion for multi-body systems
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=		-DINSTALL_PYTHON_INTERFACE_ONLY=ON

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/${NAME}/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/py-pinocchio/depend.mk

include ../../graphics/assimp/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
