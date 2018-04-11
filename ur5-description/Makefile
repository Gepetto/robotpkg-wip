# robotpkg Makefile for:	wip/ur5-description
# Created:			Guilhem Saurel on Thu Nov 30, 2017
#

VERSION=		1.0.1
DISTNAME=		ur5-description-${VERSION}

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_GITHUB:=nim65s/${PKGBASE}/releases/download/v${VERSION}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}nim65s/${PKGBASE}

COMMENT=		Rigid body model of a simple robot arm.
MAINTAINER=		gepetto-soft@laas.fr

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
