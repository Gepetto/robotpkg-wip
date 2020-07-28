# robotpkg Makefile for:	wip/py-example-adder
# Created:			Guilhem Saurel on Tue, 10 Jul 2018
#

ORG=			gepetto
NAME=			example-adder
VERSION=		3.0.0

PKGNAME=		${PKGTAG.python-}${DISTNAME}

CMAKE_ARGS+=		-DINSTALL_PYTHON_INTERFACE_ONLY=ON

CATEGORIES=		wip
COMMENT=		Example Project
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/${NAME}/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
