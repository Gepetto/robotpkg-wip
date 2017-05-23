# robotpkg Makefile for:	wip/talos-ros-control
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

PKGREVISION=	2
VERSION=	0.2.9
PKGNAME=	talos-ros-control-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_ros_control/}
COMMENT=	ros_control package with torque sensors
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

ROS_METAPKG=	yes
USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../graphics/ros-robot-model/depend.mk
include ../../graphics/ros-rqt/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../sysutils/py-rospkg/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
