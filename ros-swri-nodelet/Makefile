# robotpkg Makefile for:	devel/ros-swri-nodelet
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

ROS_REPO=		swri-robotics
ROS_PKG=		marti_common
ROS_METAPKG=	no
ROS_VERSION=	2.3.0
ROS_COMMENT=	Nodelet package created at Southwest Reseach Institute's Intelligent Vehicle Systems section for working with Robot Operating System (ROS)

# We need to set PKGNAME explicitely, otherwise devel/ros-base/Makefile.common
# included below will set it to a name using ROS_PKG
PKGNAME=		ros-swri-nodelet-${ROS_VERSION}
CATEGORIES=		devel
MAINTAINER=		laas-infuse@laas.fr
LICENSE=		modified-bsd
HOMEPAGE=		https://github.com/swri-robotics/marti_common

CONFIGURE_DIRS+= ${WRKSRC}/swri_nodelet

include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/cmake.mk
# NOTE in robotpkg, roscpp is packaged inside middleware/ros-comm
include ../../middleware/ros-comm/depend.mk 
include ../../devel/ros-nodelet-core/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
