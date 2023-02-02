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

USE_BOOST_LIBS=		unit_test_framework python
USE_PYTHON_ONLY=	true

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../wip/flex-joints/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
