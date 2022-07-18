# robotpkg Makefile for:	wip/cppad
# Created:			Guilhem Saurel on Wed, 17 Oct 2018
#

VERSION=		20220000.4
DISTNAME=		CppAD-${VERSION}
PKGNAME=		cppad-${VERSION}
MASTER_SITES=		${MASTER_SITE_GITHUB:=coin-or/}

CATEGORIES=		wip
COMMENT=		CppAD
LICENSE=		eclipse
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=		-Dcppad_prefix=${PREFIX}
DEPEND_ABI.cmake=	cmake>=3.1

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
