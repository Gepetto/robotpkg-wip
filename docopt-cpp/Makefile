# robotpkg Makefile for:	wip/docopt-cpp
# Created:			Guilhem Saurel on Wed, 23 Nov 2022
#

ORG=			docopt
NAME=			docopt.cpp
VERSION=		0.6.3

GITHUB_TAG=		v${VERSION}
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		docopt-cpp-${VERSION}

MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

CATEGORIES=		wip
COMMENT=		C++11 port of docopt
LICENSE=		mit
MAINTAINER=		gsaurel@laas.fr

include ../../wip/simbody/depend.mk
include ../../optimization/py-casadi/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
