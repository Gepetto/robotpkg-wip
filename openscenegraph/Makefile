# robotpkg Makefile for:	graphics/OpenSceneGraph
# Created:			Guilhem Saurel on Mon, 25 May 2020
#

ORG=			openscenegraph
NAME=			OpenSceneGraph
VERSION=		3.6.5

DISTNAME=		${NAME}-${VERSION}
MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}/archive/
WRKSRC=			${WRKDIR}/${NAME}-${DISTNAME}

CATEGORIES=		graphics
COMMENT=		open source high performance 3D graphics toolkit
LICENSE=		gnu-lgpl-v2.1
MAINTAINER=		gsaurel@laas.fr

export COLLADA_DIR=	${PREFIX.collada-dom}

include ../../graphics/collada-dom/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
