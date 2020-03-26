# robotpkg Makefile for:	wip/tiago-description-calibration
# Created:			Olivier Stasse on Tue, 1 Dec 2019
#

ORG=		    pal-robotics
VERSION=	    0.0.6
PKGBASE=	    tiago-description-calibration
DISTNAME=	    ${VERSION}
PKGNAME=	    ${PKGBASE}-${VERSION}
ROSNAME=	    $(subst -,_,${PKGBASE})
WRKSRC=		    ${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	    ${PKGBASE}
PKGREVISION=	    1

CATEGORIES=	    wip
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=	    ${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	    ${HOMEPAGE}/archive/
COMMENT=	    Simulation for the TIAGo robot
LICENSE=	    2-clause-bsd

USE_BOOST_LIBS=	thread

include ../../wip/sysdep/ubuntu-distro.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/tiago-robot/depend.mk
ifeq (xenial,${UBUNTUDISTRO})
  include ../../wip/pal-hardware-gazebo/depend.mk
else
  include ../../wip/pal-hardware-gazebo-melodic/depend.mk
endif
include ../../wip/pal-gazebo-plugins/depend.mk
include ../../wip/py-prf-ros-controllers/depend.mk
include ../../wip/tiago-moveit-config/depend.mk
include ../../wip/play-motion/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
