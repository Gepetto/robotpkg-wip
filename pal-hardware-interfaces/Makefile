# robotpkg Makefile for:	wip/talos-pal-hardware-interfaces
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

ORG=			pal-robotics
NAME=			pal-hardware-interfaces
VERSION=		0.0.4

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}

COMMENT=		Hardware interfaces developped by PAL-Robotics
LICENSE=		gnu-lgpl-v3

USE_BOOST_LIBS=		thread

ifeq (16.04.pal,${OS_VERSION})
  CMAKE_PREFIX_PATH+=/opt/pal/erbium
else
  include ../../wip/py-prf-ros-control/depend.mk
endif

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
