# robotpkg Makefile for:	simulation/openhrp3-simulator-wo-rtm
# Created:			Olivier Stasse on Thursday, 25 Aug 2016
#
VERSION=		1.1.1
DISTNAME=		openhrp3-simulator-wo-rtm-${VERSION}

CATEGORIES=		simulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=openhrp3-simulator-wo-rtm/}
MASTER_REPOSITORY=      ${MASTER_REPOSITORY_GITHUB}/olivier-stasse/openhrp3-simulator-wo-rtm

MAINTAINER=		ostasse@laas.fr
COMMENT=		OpenHRP-3 Simulator without RTM
LICENSE=		eclipse


CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

WRKSRC=			${WRKDIR}/openhrp3-simulator-wo-rtm-${VERSION}
DYNAMIC_PLIST_DIRS+=	share/doc/openhrp3-simulator-wo-rtm

include ../../graphics/gepetto-viewer/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
