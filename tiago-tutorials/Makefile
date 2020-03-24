# robotpkg Makefile for:	wip/tiago-tutorials
# Created:			Olivier Stasse on Tue, 8 May 2018
#

ORG=		    pal-robotics
VERSION=	    2.0.3
PKGBASE=	    tiago-tutorials
DISTNAME=	    ${VERSION}
PKGNAME=	    ${PKGBASE}-${VERSION}
ROSNAME=	    $(subst -,_,${PKGBASE})
WRKSRC=		    ${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	    ${PKGBASE}

CATEGORIES=	    wip
HOMEPAGE=	    ${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_REPOSITORY=  ${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	    ${HOMEPAGE}/archive/
COMMENT=	    Tiago tutorials
LICENSE=	    2-clause-bsd


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
include ../../wip/aruco-ros/depend.mk
include ../../wip/tiago-robot/depend.mk
include ../../wip/tiago-simulation/depend.mk

include ../../wip/sysdep/ubuntu-distro.mk
ifeq (xenial,${UBUNTUDISTRO})
  include ../../wip/pal-gazebo-plugins/depend.mk
  include ../../wip/pal-hardware-gazebo/depend.mk
else
  include ../../wip/pal-gazebo-plugins-melodic/depend.mk
  include ../../wip/pal-hardware-gazebo-melodic/depend.mk
endif
include ../../wip/pal-msgs/depend.mk
include ../../wip/play-motion/depend.mk
include ../../wip/py-prf-ros-controllers/depend.mk
include ../../wip/tiago-moveit-config/depend.mk
include ../../wip/play-motion/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
