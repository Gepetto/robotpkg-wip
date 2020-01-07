# robotpkg Makefile for:	wip/prf-gazebo-ros-pkgs-melodic
# Created:			Olivier Stasse on Mer, 2 Jan 2020
#
ORG=		pal-robotics-forks
VERSION=	3.0.1
PRFNAME=	gazebo-ros-pkgs
PKGBASE=	prf-${PRFNAME}-melodic
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PRFNAME})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

ONLY_FOR_PLATFORM= Ubuntu-18.04-%

HOMEPAGE= 	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/

COMMENT=	Wrappers, tools and additional API for using ROS with Gazebo.
LICENSE=	2-clause-bsd

CONFLICTS+=	gazebo-ros-control-[0-9]*
CONFLICTS+=	prf-gazebo-ros-control-[0-9]*
ROS_METAPKG=	yes

CMAKE_ARGS+=\
  -Dgazebo_INCLUDE_DIRS=$(filter include/%,${SYSTEM_SEARCH.gazebo})	\
  -Dgazebo_LIBRARIES=$(filter %.so,${SYSTEM_SEARCH.gazebo})

CMAKE_PREFIX_PATH+= ${PREFIX}

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../graphics/ros-urdf/depend.mk
include ../../image/ros-image-common/depend.mk
include ../../image/ros-vision-opencv/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-angles/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../sysutils/ros-diagnostics/depend.mk
include ../../wip/prf-ros-control/depend.mk
include ../../mk/sysdep/gazebo.mk
include ../../mk/sysdep/libogre.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
