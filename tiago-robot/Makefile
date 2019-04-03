# robotpkg Makefile for:	wip/tiago-robot
# Created:			Olivier Stasse on Tue, 8 May 2018
#

VERSION=	0.0.35os1
PKGBASE=	tiago-robot
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Description and controller configuration of TIAGo
LICENSE=	2-clause-bsd


ROS_METAPKG=	yes
USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/pmb2-robot/depend.mk
include ../../wip/pal-gripper/depend.mk
include ../../wip/head-action/depend.mk
include ../../wip/tf-lookup/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
