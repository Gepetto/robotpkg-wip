# robotpkg Makefile for:	wip/ros-aicp-mapping
# Created:			Guilhem Saurel on Fri, 24 Jan 2020
#

ROS_PKG=		aicp_mapping
ROS_METAPKG=		yes
ROS_VERSION=		1.0.1
ROS_REPO=		gepetto

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKG}}
MASTER_REPOSITORY=	git ${HOMEPAGE}.git

CATEGORIES=		wip
ROS_COMMENT=		Auto-tuned Iterative Closest Point -- AICP

include ../../meta-pkgs/ros-base/Makefile.common

include ../../wip/libnabo/depend.mk
include ../../wip/libpointmatcher/depend.mk
include ../../mk/sysdep/libpcl.mk
include ../../wip/ros-perception-pcl/depend.mk

include ../../devel/ros-cmake-modules/depend.mk
include ../../image/opencv3/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-comm/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
