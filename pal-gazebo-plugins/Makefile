# robotpkg Makefile for:	wip/pal-gazebo-plugins
# Created:			Olivier Stasse on Fri, 21 Apr 2017
#

ORG=			pal-robotics
NAME=			pal-gazebo-plugins
VERSION=		2.0.0

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/archive/

COMMENT=		Common Gazebo v1.9+ plugins used by the PAL Robotics robots
LICENSE=		2-clause-bsd

# According to PAL instructions, we stay on the kinetic branch on 16.04
include ../../mk/robotpkg.prefs.mk
ifeq (16.04,${OS_VERSION})
  VERSION=		1.1.9
  DISTINFO_FILE=	${ROBOTPKG_DIR}/${CATEGORIES}/${NAME}/distinfo.${OS_VERSION}
endif

include ../../wip/pal-msgs/depend.mk
include ../../wip/prf-gazebo-ros-pkgs/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
