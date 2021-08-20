# robotpkg Makefile for:	wip/cppad
# Created:			Guilhem Saurel on Wed, 17 Oct 2018
#

ORG=			coin-or
NAME=			cppad
VERSION=		20210000.7

DISTNAME=		${VERSION}
PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/CppAD-${VERSION}

HOMEPAGE=			${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/archive/${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}

CATEGORIES=		wip
COMMENT=		CppAD
LICENSE=		eclipse
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=	-Dcppad_prefix=${PREFIX}
DEPEND_ABI.cmake=	cmake>=3.1

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
