# robotpkg Makefile for:	wip/talos-simulation
# Created:			Olivier Stasse on Mer, 3 May 2017
#
ORG=		pal-robotics
VERSION=	0.1.8
PKGBASE=	talos-simulation
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
LICENSE=	gnu-lgpl-v3

COMMENT=	Talos simulation components.

ROS_METAPKG=	yes

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

# Check if we on a pal distro
include ../../wip/sysdep/pal-distro.mk

# PREFER.pal-distro gives the user the choice to compile
# over PAL packages or not.
ifeq (erbium,${PREFER.pal-distro})
  ifeq (palerbium,${PALDISTRO})
     # If yes then it does not make sense to continue
     $(error "talos-simulation is useless on PAL erbium.")
  endif
endif

include ../../motion/ros-control-toolbox/depend.mk
include ../../wip/pal-hardware-gazebo/depend.mk
include ../../wip/talos-robot/depend.mk
include ../../wip/talos-moveit-config/depend.mk
include ../../wip/prf-roboticsgroup-gazebo-plugins/depend.mk
include ../../wip/prf-ros-controllers/depend.mk
include ../../wip/pal-gazebo-plugins/depend.mk
include ../../wip/pal-gazebo-worlds/depend.mk
include ../../wip/head-action/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
