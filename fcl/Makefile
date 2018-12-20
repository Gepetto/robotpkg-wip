# robotpkg Makefile for:	wip/fcl
# Created:			Guilhem Saurel on Dec 20 2018
#

ORG=			flexible-collision-library
NAME=			fcl
VERSION=		0.5.0

DISTNAME=		${VERSION}
PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${PKGNAME}

HOMEPAGE=			${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/archive/${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}

CATEGORIES=		wip
COMMENT=		The Flexible Collision Library
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

DEPEND_ABI.cmake +=	cmake>=2.8.12

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

include ../../mapping/octomap/depend.mk

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
