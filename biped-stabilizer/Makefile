# robotpkg Makefile for:	wip/biped-stabilizer
# Created:			Guilhem Saurel on Mon, 22 Aug 2022
#

ORG=			gepetto
NAME=			biped-stabilizer
VERSION=		1.3.0

CATEGORIES=		wip
COMMENT=		Stabilizer for biped locomotion
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../math/eigen3/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
