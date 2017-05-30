# robotpkg Makefile for:	wip/talos-ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#
VERSION=	0.2.10
PKGNAME=	talos-ros-controllers-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}


CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_ros_controllers/}
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

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
include ../../wip/talos-ros-control/depend.mk
include ../../wip/talos-pal-hardware-interfaces/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
