# robotpkg Makefile for:	simulation/simbody
# Created:			Guilhem Saurel on Wed, 23 Nov 2022
#

ORG=			simbody
NAME=			simbody
VERSION=		3.7

DISTNAME=		${NAME}-${VERSION}
GITHUB_TAG=		Simbody-${VERSION}
WRKSRC=			${WRKDIR}/${NAME}-Simbody-${VERSION}
PKGNAME=		${PKGTAG.python-}${DISTNAME}
MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

CATEGORIES=		simulation
COMMENT=		 High-performance C++ multibody dynamics/physics library for simulating articulated biomechanical and mechanical systems.
LICENSE=		apache-2.0
MAINTAINER=		gsaurel@laas.fr

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
