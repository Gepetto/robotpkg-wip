# robotpkg Makefile for:	wip/py310-flex-joints
# Created:			Guilhem Saurel on Fri, 24 Jun 2022
#

ORG=			gepetto
NAME=			flex-joints
VERSION=		1.1.0

CATEGORIES=		wip
COMMENT=		adaptation for rigid control on flexible devices
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../pkgtools/pkg-config/depend.mk
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
