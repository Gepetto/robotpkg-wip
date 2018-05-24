# robotpkg Makefile for:	wip/mraa
# Created:			Guilhem Saurel on Thu, 24 May 2018
#

#PKGBASE=		mraa
VERSION=		1.9.0
DISTNAME=		v${VERSION}
PKGNAME=		mraa-${VERSION}
WRKSRC=			${WRKDIR}/${PKGNAME}

MASTER_SITES=		${MASTER_SITE_GITHUB:=intel-iot-devkit/${PKGBASE}/archive/}
MASTER_REPOSITORY=		${MASTER_REPOSITORY_GITHUB}/intel-iot-devkit/${PKGBASE}

MAINTAINER=	gepetto-soft@laas.fr
COMMENT=	low speed IO communication in C with bindings in python
LICENSE=	mit
CATEGORIES=	hardware
HOMEPAGE=	http://mraa.io

include ../../pkgtools/pkg-config/depend.mk
include ../../devel/swig/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
