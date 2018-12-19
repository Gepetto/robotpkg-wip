# robotpkg Makefile for:	wip/universal-robot
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		universal_robot
ROS_METAPKG=	yes
ROS_VERSION=	1.2.1
ROS_REPO=		ros-industrial

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	ROS-Industrial Universal Robot meta-package

include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/ros-std-msgs/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-dynamic-reconfigure/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
