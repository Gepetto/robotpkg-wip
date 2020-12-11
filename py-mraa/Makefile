# robotpkg Makefile for:	wip/mraa
# Created:			Guilhem Saurel on Thu, 24 May 2018
#

PKGBASE=		mraa
VERSION=		1.9.0
DISTNAME=		v${VERSION}
PKGNAME=		${PKGBASE}-${VERSION}
WRKSRC=			${WRKDIR}/${PKGNAME}

MASTER_SITES=		${MASTER_SITE_GITHUB:=intel-iot-devkit/${PKGBASE}/archive/}
MASTER_REPOSITORY=		${MASTER_REPOSITORY_GITHUB}/intel-iot-devkit/${PKGBASE}

MAINTAINER=	gepetto-soft@laas.fr
COMMENT=	IO communication in C with bindings in C++ python & java
LICENSE=	mit
CATEGORIES=	hardware
HOMEPAGE=	http://mraa.io

CMAKE_ARGS+=	-DBUILDSWIGNODE=OFF

include ../../wip/mk/sysdep/libjson-c.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/git.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/swig.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
