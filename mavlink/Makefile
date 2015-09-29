# robotpkg Makefile for:	supervision/hyper
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DISTNAME= 		mavlink-${VERSION}
VERSION=		20150929
CATEGORIES=		middleware

COMMIT= 			9fff38f4561b7a6ff32ee71d41e67cf956e541bd
FETCH_METHOD= 		git
MASTER_SITES=		https://github.com/mavlink/mavlink.git@${COMMIT}
MASTER_REPOSITORY=	https://github.com/mavlink/mavlink.git

MAINTAINER=		arnaud.degroote@isae-supaero.fr
COMMENT=		MAVLink -- Micro Air Vehicle Message Marshalling Library
LICENSE=		gnu-lgpl-v3

WRKSRC= 		${WRKDIR}/mavlink-${VERSION}

CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		_build

pre-configure:
	mkdir ${WRKSRC}/${CONFIGURE_DIRS}

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
