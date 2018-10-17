# robotpkg Makefile for:	wip/cppad
# Created:			Guilhem Saurel on Wed, 17 Oct 2018
#

ORG=			coin-or
NAME=			CppAD
VERSION=		20180000.0

DISTNAME=		${VERSION}
PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${PKGNAME}

HOMEPAGE=			${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/archive/${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}

CATEGORIES=		wip
COMMENT=		CppAD
LICENSE=		eclipse
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=	-Dcppad_prefix=${PREFIX}

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
