# robotpkg Makefile for:	wip/tiago-description-calibration
# Created:			Olivier Stasse on Tue, 1 Dec 2019
#

ORG=			pal-robotics
NAME=			tiago-description-calibration
VERSION=		0.0.6
PKGREVISION=		1

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}

COMMENT=		Simulation for the TIAGo robot
LICENSE=		2-clause-bsd

USE_BOOST_LIBS=		thread

include ../../wip/pal-gazebo-plugins/depend.mk
include ../../wip/pal-hardware-gazebo/depend.mk
include ../../wip/play-motion/depend.mk
include ../../wip/py-prf-ros-controllers/depend.mk
include ../../wip/tiago-moveit-config/depend.mk
include ../../wip/tiago-robot/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
