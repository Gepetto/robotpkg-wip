# robotpkg Makefile for:	wip/py-example-adder
# Created:			Guilhem Saurel on Tue, 10 Jul 2018
#

ORG=				gepetto
NAME=				example-adder
VERSION=			1.0.0

DISTNAME=			${NAME}-${VERSION}
PKGNAME=			${PKGTAG.python-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	git https://gepgitlab.laas.fr/${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS=	--recursive

CATEGORIES=			wip
COMMENT=			Example Project
MAINTAINER=			gsaurel@laas.fr
LICENSE=			2-clause-bsd

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=ON

include ../../wip/example-adder/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
