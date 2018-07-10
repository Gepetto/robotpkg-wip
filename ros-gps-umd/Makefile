# robotpkg Makefile for:	interface/ros-gps-umd
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

ROS_PKG=	gps_umd
ROS_METAPKG=	yes
ROS_VERSION=	0.2.0
ROS_COMMENT=	a space to stage messages and common GPS-processing routines
ROS_REPO=	swri-robotics

CATEGORIES=	interface

include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/libgps.mk
include ../../mk/robotpkg.mk
