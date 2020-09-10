# robotpkg Makefile for:	wip/agimus-vision
# Created:			Long Ha Thuc on Tue, 18 Aug 2020
#

ORG=			agimus
NAME=			agimus-demos
VERSION=		1.1.0
DISTNAME=		${NAME}-${VERSION}

MASTER_SITES?=      ${MASTER_SITE_GITHUB:=${ORG}/${NAME}}/releases/download/v${VERSION}/
MASTER_REPOSITORY?=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

LICENSE=		2-clause-bsd
CATEGORIES=		wip
COMMENT=		agimus-demos

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/ros-catkin/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
