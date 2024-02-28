# robotpkg Makefile for:	wip/qpmad
# Created:			Guilhem Saurel on Thu, 24 Mar 2022
#

ORG=			asherikov
NAME=			qpmad
VERSION=		1.1.1

DISTNAME=		${VERSION}
PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${PKGNAME}
HOMEPAGE=		https://${ORG}.github.io/${NAME}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		optimization
COMMENT=		Goldfarb-Idnani quadratic programming solver
LICENSE=		apache-2.0

DEPEND_ABI.eigen3+=	eigen3>=3.3
DEPEND_ABI.cmake=	cmake>=3

include ../../math/eigen3/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
