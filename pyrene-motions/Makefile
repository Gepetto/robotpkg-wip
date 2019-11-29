# robotpkg Makefile for:	wip/pyrene-motions
# Created:			Olivier Stasse, on Tue. 21th Aug, 2018
#

ORG=			pyrene-dev
NAME=			pyrene-motions
VERSION=		0.0.1

CATEGORIES=		wip
COMMENT=		This packages provides motions of the humanoid robot Pyrene readable by the SoT framework.
LICENSE=		2-clause-bsd
MAINTAINER=		ostasse@laas.fr

CMAKE_PREFIX_PATH+= ${PREFIX}
WRKSRC=		${WRKDIR}/pyrene-motions-${VERSION}


include ../../devel/jrl-cmakemodules/Makefile.common
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
