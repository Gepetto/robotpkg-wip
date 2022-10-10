# robotpkg Makefile for:	wip/visit-struct
# Created:			Guilhem Saurel on Mon, 10 Oct 2022
#

ORG=		garbageslam
NAME=		visit_struct
VERSION=	1.0

GITHUB_TAG=	v${VERSION}
DISTNAME=	${NAME}-${VERSION}
PKGNAME=	$(subst _,-,${DISTNAME})

MASTER_SITES=	${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=	wip
COMMENT=	A miniature library for struct-field reflection in C++
LICENSE=	bsl
MAINTAINER=	gsaurel@laas.fr

#include ../../mk/sysdep/meson.mk
include ../../pkgtools/install-sh/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

do-build:
	$(NOOP)

do-install:
	${MKDIR} ${DESTDIR}${PREFIX}/include/${NAME};				\
	${INSTALL_DATA} ${WRKSRC}/include/${NAME}/*.hpp ${PREFIX}/include/${NAME}
