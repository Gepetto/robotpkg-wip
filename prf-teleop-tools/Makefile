# robotpkg Makefile for:	wip/prf-teleop-tools
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#
ORG=		pal-robotics-forks
VERSION=	0.3.2
PRFNAME=	teleop-tools
PKGBASE=	prf-${PRFNAME}
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PRFNAME})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}

CATEGORIES=	wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/

COMMENT=	Pal Robotics fork of teleop-tools ros package
LICENSE=	2-clause-bsd

ROS_METAPKG=	yes

CONFLICTS=	talos-ros-controllers

# Allows to have robotpkg ros packages with the highest priority
# over system ros packages.
# http://wiki.ros.org/catkin/what
CMAKE_PREFIX_PATH+= ${PREFIX}

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../wip/prf-ros-control/depend.mk
include ../../devel/ros-catkin/depend.mk
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
include ../../wip/sysdep/ros-four-wheel-steering-msgs.mk
include ../../wip/ros-urdf-geometry-parser/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
