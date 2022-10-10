# robotpkg Makefile for:	math/matio-cpp
# Created:			Guilhem Saurel on Mon, 29 Aug 2022
#

ORG=		ami-iit
NAME=		matio-cpp
VERSION=	0.2.1
PKGREVISION=

DISTNAME=	${NAME}-${VERSION}
GITHUB_TAG=	v${VERSION}
PKGNAME=	${PKGTAG.python-}${DISTNAME}

MASTER_SITES=	${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=	math
COMMENT=	c++ wrapper of matio
LICENSE=	modified-bsd
MAINTAINER=	gsaurel@laas.fr

include ../../wip/matio/depend.mk
include ../../wip/visit-struct/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
