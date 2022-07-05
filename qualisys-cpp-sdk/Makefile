# robotpkg Makefile for:	wip/qualisys-cpp-sdk
# Created:			Guilhem Saurel on Tue,  5 Jul 2022
#

PKGNAME=		qualisys-cpp-sdk-2021.2

GITHUB_TAG=		rt_protocol_1.23
DISTNAME=		qualisys_cpp_sdk
MASTER_SITES=		${MASTER_SITE_GITHUB:=qualisys/}

WRKSRC=			${WRKDIR}/${DISTNAME}-${GITHUB_TAG}

CATEGORIES=		wip
LICENSE=		mit
COMMENT=		C++ sdk for talking to Qualisys Track Manager software

DEPEND_ABI.cmake+=	cmake>=3.8

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
