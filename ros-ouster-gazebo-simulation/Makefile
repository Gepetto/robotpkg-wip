# robotpkg Makefile for:	wip/ros-ouster-gazebo-simulation
# Created:			Guilhem Saurel on Thu, 20 Feb 2020
#

ROS_REPO=		Gepetto
ROS_PKG=		ouster-gazebo-simulation
ROS_VERSION=		2.0.0
ROS_METAPKG=		yes

PKGNAME=		ros-$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=		the simulation of Ouster OS1-64 with ros and gazebo


include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/ros-common-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../simulation/gazebo-ros-pkgs/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../mk/robotpkg.mk
