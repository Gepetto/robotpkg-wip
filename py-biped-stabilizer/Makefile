# robotpkg Makefile for:	wip/py38-biped-stabilizer
# Created:			Guilhem Saurel on Mon, 22 Aug 2022
#

ORG=			gepetto
NAME=			biped-stabilizer
VERSION=		1.1.0

CATEGORIES=		wip
COMMENT=		Stabilizer for biped locomotion
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework python
USE_PYTHON_ONLY=	true

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../wip/biped-stabilizer/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../robots/py-example-robot-data/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
