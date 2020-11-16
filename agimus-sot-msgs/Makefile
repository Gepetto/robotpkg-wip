# robotpkg Makefile for:	wip/agimus-sot-msgs
# Created:			Long Ha Thuc on Tue, 18 Aug 2020
#

ORG=			agimus
NAME=			agimus-sot-msgs
VERSION=		1.0.0

ROSNAME=		$(subst -,_,${NAME})
PKGNAME=		${NAME}-${VERSION}
DISTNAME=		${ROSNAME}-${VERSION}

MASTER_SITES?=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}/releases/download/v${VERSION}/
MASTER_REPOSITORY?=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
LICENSE=		2-clause-bsd

CATEGORIES=		wip
COMMENT=		Messages and services for the agimus_sot package

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/ros-catkin/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
