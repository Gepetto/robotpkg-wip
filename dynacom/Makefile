# robotpkg Makefile for:	wip/dynacom
# Created:			Guilhem Saurel on Mon, 12 Dec 2022
#

ORG=			gepetto
NAME=			dynacom
VERSION=		1.2.0
PKGREVISION=		1

CATEGORIES=		wip
COMMENT=		DYNAmics of the Center of Mass
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/eiquadprog/depend.mk
include ../../math/pinocchio/depend.mk
include ../../robots/example-robot-data/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
