# robotpkg Makefile for:	wip/agimus-sot
# Created:			Long Ha Thuc on Tue, 18 Aug 2020
#

ORG=			agimus
NAME=			agimus-sot
VERSION=		1.0.2
PKGREVISION=		1
DISTNAME=		${NAME}-${VERSION}

MASTER_SITES?=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}/releases/download/v${VERSION}/
MASTER_REPOSITORY?=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
LICENSE=		2-clause-bsd

DYNAMIC_PLIST_DIRS+=	share/doc/agimus_sot

CATEGORIES=		wip
COMMENT=		Package to link SoT to the Agimus framework.

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/agimus-sot-msgs/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-bridge-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../path/py-hpp-manipulation-corba/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
