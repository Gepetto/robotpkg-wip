# robotpkg Makefile for:	wip/ros-universal-robot
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		universal_robot
ROS_METAPKG=		yes
ROS_VERSION=		1.2.1
ROS_REPO=		ros-industrial
PKGREVISION=		1

PKGNAME=		ros-$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=		ROS-Industrial Universal Robot meta-package

include ../../meta-pkgs/ros-base/Makefile.common

include ../../wip/ros-moveit/depend.mk

include ../../interfaces/ros-std-msgs/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-dynamic-reconfigure/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../interfaces/ros-control-msgs/depend.mk
include ../../motion/ros-control/depend.mk
include ../../simulation/gazebo-ros-pkgs/depend.mk
include ../../math/ros-geometry2/depend.mk
include ../../localization/ros-joint-state-publisher/depend.mk
include ../../localization/ros-robot-state-publisher/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-xacro/depend.mk
include ../../graphics/robot-capsule-urdf/depend.mk
include ../../graphics/ros-urdf/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
