# robotpkg Makefile for:	wip/cppadcodegen
# Created:			Guilhem Saurel on Wed, 17 Oct 2018
#

ORG=			joaoleal
NAME=			cppadcodegen
VERSION=		2.3.0

DISTNAME=		v${VERSION}
PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/CppADCodeGen-${VERSION}

HOMEPAGE=			${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/archive/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}

CATEGORIES=		wip
COMMENT=		CppADCodeGen
LICENSE=		eclipse
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=	-DCREATE_DOXYGEN_DOC=YES
DYNAMIC_PLIST_DIRS+=	share/doc/cppadcg

include ../../wip/cppad/depend.mk
include ../../wip/mk/sysdep/llvm.mk
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/googletest.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
