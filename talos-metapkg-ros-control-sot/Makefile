# robotpkg Makefile for:	wip/talos-ros-control-sot
# Created:			Olivier Stasse on Fri, 5 May 2017
#

VERSION=		0.0.12
PKGBASE=		talos-metapkg-ros-control-sot
PKGNAME=		${PKGBASE}-${VERSION}
ROSNAME=		$(subst -,_,${PKGBASE})
DISTNAME=		${ROSNAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=		${PKGBASE}
PKGREVISION=		1

CATEGORIES=		wip
HOMEPAGE=		${MASTER_SITE_GITHUB:=stack-of-tasks/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/releases/download/v${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/${ROSNAME}

COMMENT=	ros_control package for the SoT and specifically for Talos
LICENSE=	2-clause-bsd


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
include ../../wip/py-dynamic-graph-bridge-v3/depend.mk

include ../../wip/sysdep/pal-distro.mk
ifeq (palerbium,${PALDISTRO})
  CMAKE_PREFIX_PATH+=/opt/pal/erbium
else
  include ../../wip/pal-hardware-interfaces/depend.mk
  include ../../wip/prf-ros-controllers/depend.mk
  include ../../motion/ros-control-toolbox/depend.mk
endif

include ../../wip/roscontrol-sot/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
