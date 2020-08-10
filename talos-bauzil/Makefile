# robotpkg Makefile for:	wip/talos-bauzil
# Created:			Guilhem Saurel on Mon, 10 Aug 2020
#

ORG=			stack-of-tasks
NAME=			talos-bauzil
VERSION=		0.1.0

DISTNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
LICENSE=		gnu-lgpl-v3

CATEGORIES=		wip
COMMENT=		Talos simulation in Bauzil

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../wip/talos-data/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
