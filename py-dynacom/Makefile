# robotpkg Makefile for:	wip/py38-dynacom
# Created:			Guilhem Saurel on Mon, 12 Dec 2022
#

ORG=			gepetto
NAME=			dynacom
VERSION=		1.2.0

PKGNAME=		${PKGTAG.python-}${DISTNAME}

CATEGORIES=		wip
COMMENT=		DYNAmics of the Center of Mass
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework python
USE_PYTHON_ONLY=	true

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../wip/aig/depend.mk
include ../../wip/py-aig/depend.mk
include ../../wip/dynacom/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/eiquadprog/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../robots/example-robot-data/depend.mk
include ../../robots/py-example-robot-data/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
