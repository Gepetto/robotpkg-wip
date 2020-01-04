# robotpkg Makefile for:	wip/pal-hardware-gazebo-melodic
# Created:			Olivier Stasse on Thu, 2 June 2020
#
ORG=		pal-robotics
VERSION=	1.0.0
PRFNAME=	pal-hardware-gazebo
PKGBASE=	${PRFNAME}-melodic
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PRFNAME})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

ONLY_FOR_PLATFORM= Ubuntu-18.04-%

# Source file from pal-robotics website
HOMEPAGE = 	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Hardware interfaces developped by PAL-Robotics in Gazebo
LICENSE=	2-clause-bsd

USE_BOOST_LIBS=	thread

CONFLICTS+=	gazebo-ros-control

CMAKE_PREFIX_PATH+=${PREFIX}
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/pal-hardware-interfaces/depend.mk
include ../../wip/pal-statistics/depend.mk

include ../../wip/sysdep/ubuntu-distro.mk
ifeq (bionic,${UBUNTUDISTRO})
  include ../../wip/prf-gazebo-ros-pkgs-melodic/depend.mk
else
  include ../../wip/prf-gazebo-ros-pkgs/depend.mk
endif

include ../../wip/prf-ros-control/depend.mk
include ../../wip/dynamic-introspection/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
