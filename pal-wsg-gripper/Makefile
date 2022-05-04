# robotpkg Makefile for:	wip/pal-wsg-gripper
# Created:			Olivier Stasse on Thu, 12 Dec 2018
#

ORG=			pal-robotics
NAME=			pal-wsg-gripper
VERSION=		0.0.9
PKGREVISION=		1

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git

COMMENT=		Meta-package including information of the PAL Schunk WSG gripper
LICENSE=		gnu-gpl-v3

USE_BOOST_LIBS=		thread

ROS_METAPKG=		yes

CMAKE_PREFIX_PATH+=${PREFIX}
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
