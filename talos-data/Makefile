# robotpkg Makefile for:	wip/talos-data
# Created:			Olivier Stasse, on Tue. 9th May, 2017
#

ORG=			stack-of-tasks
NAME=			talos-data
VERSION=		2.0.0

ROSNAME=		$(subst -,_,${NAME})
PKGNAME=		${NAME}-${VERSION}
DISTNAME=		${ROSNAME}-${VERSION}

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
LICENSE=		gnu-lgpl-v3

CATEGORIES=		wip
COMMENT=		This packages provides data of the humanoid robot Pyrene in a friendly way for the SoT.
MAINTAINER=		ostasse@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
