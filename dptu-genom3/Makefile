# robotpkg Makefile for:	wip/dptu-genom3
# Created:			François Magimel on Fri, 07 Aug 2015

VERSION=		0.2
DISTNAME=		dptu-genom3-${VERSION}
MASTER_SITES=		https://redmine.laas.fr/attachments/download/147/
MASTER_REPOSITORY=	git git://redmine.laas.fr/laas/users/fmagimel/dptu-genom3.git

CATEGORIES=		hardware
MAINTAINER=		openrobots@laas.fr
COMMENT=		GenoM3 module for Pan-Tilt Unit management
LICENSE=		isc

include ../../architecture/genom3/module.mk

include ../../pkgtools/pkg-config/depend.mk
include ../../interfaces/openrobots-idl/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
