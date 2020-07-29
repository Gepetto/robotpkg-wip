# robotpkg Makefile for:	wip/py-example-adder
# Created:			Guilhem Saurel on Tue, 10 Jul 2018
#

ORG=			gepetto
NAME=			example-adder
VERSION=		3.0.2

PKGNAME=		${PKGTAG.python-}${DISTNAME}

CATEGORIES=		wip
COMMENT=		Example Project
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_PYTHON_ONLY=	true

USE_BOOST_LIBS=		unit_test_framework python

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/${NAME}/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
