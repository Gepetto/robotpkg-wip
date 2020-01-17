# robotpkg Makefile for:	wip/py36-libnabo
# Created:			Guilhem Saurel on Fri, 17 Jan 2020
#

ORG=			ethz-asl
NAME=			libnabo
VERSION=		1.0.7

DISTNAME=		${VERSION}
PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${NAME}-${VERSION}

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/archive/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		wip
COMMENT=		A fast K Nearest Neighbor library for low-dimensional spaces

LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=		-DSHARED_LIBS=true

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../math/eigen3/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
