# robotpkg Makefile for:	simulation/py310-bullet3
# Created:			Guilhem Saurel on Mon, 23 May 2022
#

ORG=			bulletphysics
NAME=			bullet3
VERSION=		3.24
PKGREVISION=		1

CATEGORIES=		simulation
COMMENT=		Bullet Physics SDK
LICENSE=		zlib

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${DISTNAME}
MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}

PYTHON_SELF_CONFLICT=	yes

CMAKE_ARGS+=		-DBUILD_SHARED_LIBS=ON
CMAKE_ARGS+=		-DBUILD_PYBULLET=ON
CMAKE_ARGS+=		-DBUILD_PYBULLET_NUMPY=ON
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}


include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
