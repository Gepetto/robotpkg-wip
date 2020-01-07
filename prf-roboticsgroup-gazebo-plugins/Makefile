# robotpkg Makefile for:	wip/prf-roboticsgroup-gazebo-plugins
# Created:			Olivier Stasse on Fri, 21 Apr 2017
#
ORG=		pal-robotics-forks
VERSION=	0.1.3
PRFNAME=	roboticsgroup-gazebo-plugins
PKGBASE=	prf-${PRFNAME}
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME= 	$(subst -,_,${PRFNAME})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}
PKGREVISION=	1

CATEGORIES=	wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/

LICENSE=	2-clause-bsd
COMMENT=	Provides the mimic joint functionality in Gazebo.

CMAKE_ARGS+=\
  -Dgazebo_INCLUDE_DIRS=$(filter include/%,${SYSTEM_SEARCH.gazebo})	\
  -Dgazebo_LIBRARIES=$(filter %.so,${SYSTEM_SEARCH.gazebo})

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
include ../../simulation/gazebo-ros-pkgs/depend.mk
include ../../wip/sysdep/ubuntu-distro.mk
ifeq (bionic,${UBUNTUDISTRO})
  include ../../wip/prf-gazebo-ros-pkgs-melodic/depend.mk
else
  include ../../wip/prf-gazebo-ros-pkgs/depend.mk
endif
include ../../wip/pal-hardware-interfaces/depend.mk
include ../../mk/sysdep/gazebo.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
