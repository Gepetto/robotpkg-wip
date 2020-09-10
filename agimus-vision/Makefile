# robotpkg Makefile for:	wip/agimus-vision
# Created:			Long Ha Thuc on Tue, 18 Aug 2020
#

ORG=			agimus
NAME=			agimus-vision
VERSION=		1.0.0
DISTNAME=		${NAME}-${VERSION}

MASTER_SITES?=      ${MASTER_SITE_GITHUB:=${ORG}/${NAME}}/releases/download/v${VERSION}/
MASTER_REPOSITORY?=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
LICENSE=		2-clause-bsd

CATEGORIES=		wip
COMMENT=		Computer vision for Agimus

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../image/ros-vision-opencv/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
