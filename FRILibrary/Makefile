# robotpkg Makefile for:	hardware/FRILibrary
# Created:			Matthieu Herrb on Mon, 23 May 2016
#

DISTNAME=	fril
VERSION=	1.2
PKGNAME=	FRILibrary-${VERSION}
DIST_SUBDIR=	frilib-${VERSION}
EXTRACT_SUFX=	.zip
MASTER_SITES=	http://cs.stanford.edu/people/tkr/fri/download/
HOMEPAGE=	http://cs.stanford.edu/people/tkr/fri/html/index.html
CATEGORIES=	hardware

MAINTAINER=	openrobots@laas.fr
COMMENT=	C++ Library to interface the KUKA Light Weight Robot IV
LICENSE=	apache-2.0

WRKSRC=		${WRKDIR}/FRILibrary

BUILD_DIRS=	Linux

include ../../mk/robotpkg.prefs.mk

ifeq (${MACHINE_ARCH},x86_64)
  arch=	x64
else ifeq (${MACHINE_ARCH},i386)
  arch= x86
else
  PKG_FAIL_REASON=	"Architecture not supported"
endif

PKG_SUPPORTED_OPTIONS+= debug
PKG_OPTION_DESCR.debug= Compile in debugging mode
# do not remove the newline below build= debug !
define PKG_OPTION_SET.debug
	build= debug

endef
PKG_OPTION_UNSET.debug:=  build= "release"

BUILD_TARGET=	all_${build}_${arch}

CPPFLAGS+=	-DPREFIX="${PREFIX}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/FRILibrary
	cd  ${WRKSRC}/include && \
		${PAX} -rwp ma . ${PREFIX}/include/FRILibrary
	cd ${WRKSRC}/Linux/${arch}/${build}/ && \
		${PAX} -rwp ma bin lib ${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/share/FRILibrary/KRL
	cd ${WRKSRC}/KRL && \
		${PAX} -rwp ma . ${PREFIX}/share/FRILibrary/KRL
	${INSTALL_DATA_DIR} ${PREFIX}/etc
	cd ${WRKSRC}/etc && \
		${PAX} -rwp ma . ${PREFIX}/etc

NO_CONFIGURE=	yes

include ../../archivers/pax/depend.mk
include ../../pkgtools/install-sh/depend.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
