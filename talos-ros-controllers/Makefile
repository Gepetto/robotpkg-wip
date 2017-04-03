# robotpkg Makefile for:	wip/talos-ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#
VERSION=	0.2.7
PKGBASE=	talos-ros-controllers
PKGNAME=	${PKGBASE}-${VERSION}
ROS_PKG=	ros_controllers
ROS_VERSION=	${VERSION}
ROS_REPO=	${ROS_PKG}
ROS_METAPKG=	yes
DISTNAME=	$(subst -,_,${PKGBASE})-${ROS_VERSION}
ROS_GITTAG=	${DISTNAME}
WRKSRC=		${WRKDIR}/${ROS_GITTAG}

CATEGORIES=	wip
ROS_COMMENT=	Generic robotic controllers to accompany ros_control (talos)
MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_ros_controllers/}
LICENSE=	openhrp-grx-license

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

$(info Display something for talos-ros-controllers before Makefile.common ${CMAKE_PREFIX_PATH})
include ../../meta-pkgs/ros-base/Makefile.common
CMAKE_PREFIX_PATH+= ${ROBOTPKG_BASE}
$(info Display something for talos-ros-controllers ${CMAKE_PREFIX_PATH})

include ../../wip/talos-ros-control/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/robotpkg.mk
