# robotpkg Makefile for:	wip/pal-hardware-gazebo
# Created:			Olivier Stasse on Thu, 3 May 2017
#

ORG=			pal-robotics
NAME=			pal-hardware-gazebo
VERSION=		1.0.0

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/archive/

COMMENT=		Hardware interfaces developped by PAL-Robotics in Gazebo
LICENSE=		2-clause-bsd

USE_BOOST_LIBS=		thread

CONFLICTS+=		gazebo-ros-control

CMAKE_PREFIX_PATH+=	${PREFIX}

# According to PAL instructions, we stay on the kinetic branch on 16.04
include ../../mk/robotpkg.prefs.mk
ifeq (16.04,${OS_VERSION})
  VERSION=		0.1.3
  DISTINFO_FILE=	${ROBOTPKG_DIR}/${CATEGORIES}/${NAME}/distinfo.${OS_VERSION}
endif

include ../../wip/dynamic-introspection/depend.mk
include ../../wip/pal-hardware-interfaces/depend.mk
include ../../wip/prf-gazebo-ros-pkgs/depend.mk
include ../../wip/py-pal-statistics/depend.mk
include ../../wip/py-prf-ros-control/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
