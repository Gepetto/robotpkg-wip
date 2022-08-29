# robotpkg Makefile for:	optimization/qhull
# Created:			Guilhem Saurel on Wed, 24 Aug 2022
#

NAME=			qhull
VERSION=		8.0.2

GITHUB_TAG=		v${VERSION}
DISTNAME=		${NAME}-${VERSION}
MASTER_SITES=		${MASTER_SITE_GITHUB:=${NAME}/}

CATEGORIES=		optimization
COMMENT=		Convex hull, Delaunay triangulation, Voronoi diagrams, Halfspace intersection
LICENSE=		apache-2.0

DEPEND_ABI.cmake +=	cmake>=3.0

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
