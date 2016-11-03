# robotpkg Makefile for:	mapping/gerard-bauzil
# Created:			Olivier Stasse on Thurs., 3 Nov 2016
#
VERSION=		1.0.0
DISTNAME=		gerard-bauzil-${VERSION}

CATEGORIES=		mapping
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=gerard-bauzil/}
MASTER_REPOSITORY=      git git://redmine.laas.fr/laas/users/ostasse/environnements/gerard-bauzil.git

MAINTAINER=		ostasse@laas.fr
COMMENT=		Data files for Gerard Bauzil environment
LICENSE=		gnu-gpl-v3


WRKSRC=			${WRKDIR}/gerard-bauzil-${VERSION}
DYNAMIC_PLIST_DIRS+=	share/doc/gerard-bauzil

include ../../graphics/gepetto-viewer/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
