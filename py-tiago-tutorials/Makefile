# robotpkg Makefile for:	wip/py-tiago-tutorials
# Created:			Olivier Stasse on Tue, 8 May 2018
#

ORG=			pal-robotics
NAME=			tiago-tutorials
VERSION=		2.0.3

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

# old package name, and other Python versions
CONFLICTS+=		py[0-9][0-9]-${NAME}-[0-9]*
CONFLICTS+=		${NAME}-[0-9]*

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/archive/

COMMENT=		Tiago tutorials
LICENSE=		2-clause-bsd

ROS_METAPKG=		yes
USE_BOOST_LIBS=		thread

include ../../wip/aruco-ros/depend.mk
include ../../wip/tiago-robot/depend.mk
include ../../wip/tiago-simulation/depend.mk
include ../../wip/pal-gazebo-plugins/depend.mk
include ../../wip/pal-hardware-gazebo/depend.mk
include ../../wip/pal-msgs/depend.mk
include ../../wip/play-motion/depend.mk
include ../../wip/py-prf-ros-controllers/depend.mk
include ../../wip/ros-perception-pcl/depend.mk
include ../../wip/tiago-moveit-config/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
