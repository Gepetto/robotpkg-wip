# robotpkg Makefile for:	wip/ros-moveit
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		moveit
ROS_METAPKG=	yes
ROS_VERSION=	0.10.5
ROS_REPO=		ros-planning

PKGNAME=		$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=	The MoveIt! Motion Planning Framework


include ../../meta-pkgs/ros-base/Makefile.common

include ../../wip/ros-moveit-resources/depend.mk
include ../../wip/ros-moveit-msgs/depend.mk
include ../../wip/ros-srdfdom/depend.mk
include ../../wip/ompl/depend.mk
include ../../wip/ros-warehouse-ros/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-class-loader/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../devel/ros-xacro/depend.mk
include ../../devel/ros-xacro/depend.mk.orig
include ../../graphics/robot-capsule-urdf/depend.mk
include ../../graphics/ros-geometric-shapes/depend.mk
include ../../graphics/ros-interactive-markers/depend.mk
include ../../graphics/ros-kdl-parser/depend.mk
include ../../graphics/ros-urdf/depend.mk
include ../../image/ros-image-common/depend.mk
include ../../image/ros-vision-opencv/depend.mk
include ../../interfaces/ros-comm-msgs/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-control-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/ros-angles/depend.mk
include ../../math/ros-eigen-stl-containers/depend.mk
include ../../math/ros-geometry2/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../math/ros-random-numbers/depend.mk
include ../../math/ros-random-numbers/depend.mk.orig
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../middleware/ros-dynamic-reconfigure/depend.mk
include ../../motion/orocos-kdl/depend.mk
include ../../motion/py-orocos-kdl/depend.mk
include ../../motion/ros-control/depend.mk
include ../../sysutils/ros-console/depend.mk
include ../../sysutils/ros-rviz/depend.mk


include ../../mk/sysdep/glew.mk
include ../../wip/fcl/depend.mk

DEPEND_ABI.fcl +=	fcl>=0.5.0
PREFER.fcl=		robotpkg
#DEPEND_ABI.octomap +=	octomap>=1.8.0

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
