# robotpkg Makefile for:	wip/talos-ros-control
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#
VERSION=	0.2.4
PKGBASE=	talos-ros-control
PKGNAME=	${PKGBASE}-${VERSION}
ROS_PKG=	ros_controls
ROS_VERSION=	${VERSION}
ROS_REPO=	${ROS_PKG}
ROS_METAPKG=	yes
DISTNAME=	$(subst -,_,${PKGBASE})-${ROS_VERSION}
ROS_GITTAG=	${DISTNAME}
WRKSRC=		${WRKDIR}/${ROS_GITTAG}

CATEGORIES=	wip
ROS_COMMENT=	generic control loop feedback mechanism (talos)
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_ros_control/}
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

include ../../meta-pkgs/ros-base/Makefile.common

CMAKE_ARGS+=	-DTinyXML_INCLUDE_PATH=${PREFIX.tinyxml}/include
CMAKE_ARGS+=	-DTinyXML_LIBRARY_PATH=${PREFIX.tinyxml}/lib

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../devel/ros-realtime-tools/depend.mk
include ../../graphics/ros-rqt/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../graphics/urdfdom-headers/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../middleware/ros-dynamic-reconfigure/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../mk/sysdep/tinyxml.mk
include ../../mk/robotpkg.mk
