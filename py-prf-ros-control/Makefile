# robotpkg Makefile for:	wip/py-prf-ros-control
# Created:			Olivier Stasse on Wed, 27 Apr 2018
#

ORG=			pal-robotics-forks
VERSION=		0.5.0
NAME=			ros-control

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

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/archive/

COMMENT=		ros_control package with torque sensors
LICENSE=		2-clause-bsd

ROS_METAPKG=		yes
USE_BOOST_LIBS=		thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../graphics/ros-urdf/depend.mk
include ../../graphics/ros-rqt/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../net/ros-resource-retriever/depend.mk
include ../../sysutils/py-rospkg/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
