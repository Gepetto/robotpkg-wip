# robotpkg Makefile for:	wip/talos-ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#
VERSION=	0.2.8
PKGBASE=	talos-ros-controllers
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}

ROS_METAPKG=	yes

ROS_GITTAG=	${DISTNAME}
WRKSRC=		${WRKDIR}/${ROS_GITTAG}

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_ros_controllers/}
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

$(info Display something for talos-ros-controllers before Makefile.common ${CMAKE_PREFIX_PATH})
include ../../meta-pkgs/ros-base/Makefile.common
CMAKE_PREFIX_PATH+= ${ROBOTPKG_BASE}
$(info Display something for talos-ros-controllers ${CMAKE_PREFIX_PATH})

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../graphics/ros-robot-model/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/talos-pal-hardware-interfaces/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

