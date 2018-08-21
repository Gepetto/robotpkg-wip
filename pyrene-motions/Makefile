# robotpkg Makefile for:	wip/pyrene-motions
# Created:			Olivier Stasse, on Tue. 21th Aug, 2018
#
VERSION=	0.0.1
PKGNAME=	pyrene-motions
DISTNAME=	${PKGNAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=talos/pyrene-motions/}
MASTER_REPOSITORY=	git git://gepgitlab.laas.fr:pyrene-dev/pyrene-motions.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		This packages provides motions of the humanoid robot Pyrene readable by the SoT framework.
LICENSE=		2-clause-bsd
MAINTAINER=		ostasse@laas.fr

CMAKE_PREFIX_PATH+= ${PREFIX}
WRKSRC=		${WRKDIR}/pyrene-motions-${VERSION}


include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

