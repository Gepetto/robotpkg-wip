# robotpkg Makefile for:	wip/py-prf-ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

ORG=			pal-robotics-forks
VERSION=		0.3.15
NAME=			ros-controllers
PKGREVISION=		2

PRFNAME=		prf-${NAME}
ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${PKGTAG.python-}${PRFNAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${PRFNAME}

# old package name, other Python versions, and forked package.
CONFLICTS+=		${PRFNAME}-[0-9]*
CONFLICTS+=		py[0-9][0-9]-${PRFNAME}-[0-9]*
CONFLICTS+=		${NAME}-[0-9]*
CONFLICTS+=		talos-${NAME}-[0-9]*

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}

COMMENT=		Library of ros controllers
LICENSE=		2-clause-bsd

ROS_METAPKG=		yes


# Allows to have robotpkg ros packages with the highest priority
# over system ros packages.
# http://wiki.ros.org/catkin/what
CMAKE_PREFIX_PATH+= ${PREFIX}
CMAKE_PREFIX_PATH+= /opt/ros/melodic

include ../../wip/py-prf-ros-control/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../devel/ros-xacro/depend.mk
include ../../graphics/ros-urdf/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-control-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../wip/pal-hardware-interfaces/depend.mk
include ../../wip/ros-four-wheel-steering-msgs/depend.mk
include ../../wip/ros-urdf-geometry-parser/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
