# robotpkg Makefile for:	wip/aig
# Created:			Guilhem Saurel on Wed,  6 Apr 2022
#

ORG=			gepetto
NAME=			aig
VERSION=		1.1.0
PKGREVISION=		1

CATEGORIES=		wip
COMMENT=		Stand alone computation of inverse geometry for biped robots or robotic arms.
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../wip/proxsuite/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/pinocchio/depend.mk
include ../../robots/example-robot-data/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
