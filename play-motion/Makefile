# robotpkg Makefile for:	wip/play_motion
# Created:			Olivier Stasse on Mon, 07 May 2018
#

ORG=			pal-robotics
NAME=			play-motion
VERSION=		0.4.8
PKGREVISION=		1

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/archive/

COMMENT=		Play pre-recorded motions on ros_control compliant robots
LICENSE=		2-clause-bsd


ROS_METAPKG=		yes
USE_BOOST_LIBS=		thread

ifeq (,$(filter 16.04%,${OS_VERSION}))
  include ../../wip/ros-moveit/depend.mk
endif

include ../../wip/py-prf-ros-control/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
