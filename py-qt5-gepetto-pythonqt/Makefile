# robotpkg Makefile for:	wip/py-qt-gepetto-pythonqt
# Created:			Guilhem Saurel on Mon, 28 Jan 2019
#

ORG=			gepetto
NAME=			PythonQt
VERSION=		0.0.1
PKGREVISION=		2

DISTNAME=		${NAME}-${PKG_ALTERNATIVE.qt}-${VERSION}
PKGNAME=		${PKGTAG.python-}${PKGTAG.qt-}${ORG}-pythonqt-${VERSION}
WRKSRC=			${WRKDIR}/${NAME}-${VERSION}

HOMEPAGE=			${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	git ${HOMEPAGE}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		PythonQT temporary fork
LICENSE=		gnu-lgpl-v2.1
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=		-DPythonQt_Wrap_QtAll=ON
CMAKE_ARGS+=		-DPythonQt_Extensions=ON

DEPEND_ABI.qt=		qt>5

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/qt.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
