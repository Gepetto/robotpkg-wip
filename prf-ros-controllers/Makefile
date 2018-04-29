# robotpkg Makefile for:	wip/prf-ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#
VERSION=	0.3.5
PRFNAME=	ros-controllers
PKGBASE=	prf-${PRFNAME}
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PRFNAME})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}

CATEGORIES=	wip
#MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_ros_controllers/}
HOMEPAGE=	${MASTER_SITE_GITHUB:=pal-robotics-forks/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/

COMMENT=	Library of ros controllers
LICENSE=	2-clause-bsd

ROS_METAPKG=	yes

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../devel/ros-xacro/depend.mk
include ../../graphics/ros-robot-model/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-control-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../wip/prf-ros-control/depend.mk
include ../../wip/pal-hardware-interfaces/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
