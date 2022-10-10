# robotpkg Makefile for:	wip/simde
# Created:			Guilhem Saurel on Mon, 10 Oct 2022
#

ORG=		simd-everywhere
NAME=		simde
VERSION=	0.7.2

GITHUB_TAG=	v${VERSION}
DISTNAME=	${NAME}-${VERSION}

MASTER_SITES=	${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=	wip
COMMENT=	Implementations of SIMD instruction sets
LICENSE=	mit
MAINTAINER=	gsaurel@laas.fr

#include ../../mk/sysdep/meson.mk
include ../../pkgtools/install-sh/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

do-build:
	$(NOOP)

do-install:
	${MKDIR} ${DESTDIR}${PREFIX}/include/simde/x86/avx512;			\
	${MKDIR} ${DESTDIR}${PREFIX}/include/simde/arm/neon;			\
	for dir in 								\
		simde 								\
		simde/x86 							\
		simde/x86/avx512 						\
		simde/arm 							\
		simde/arm/neon; do						\
		${INSTALL_DATA} ${WRKSRC}/$$dir/*.h ${PREFIX}/include/$$dir;	\
	done
