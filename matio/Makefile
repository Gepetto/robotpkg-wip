# robotpkg Makefile for:	math/matio
# Created:			Guilhem Saurel on Mon, 29 Aug 2022
#

ORG=		tbeu
NAME=		matio
VERSION=	1.5.23

DISTNAME=	${NAME}-${VERSION}
GITHUB_RELEASE=	v${VERSION}
PKGNAME=	${PKGTAG.python-}${DISTNAME}

MASTER_SITES=	${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=	math
COMMENT=	MATLAB MAT File I/O Library
LICENSE=	modified-bsd
MAINTAINER=	gsaurel@laas.fr

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
