# robotpkg Makefile for:	wip/ros-perception-pcl
# Created:			Guilhem Saurel on Fri, 24 Jan 2020
#

ROS_PKG=		perception_pcl
ROS_METAPKG=		yes
ROS_VERSION=		1.7.0
ROS_REPO=		ros-perception
PKGREVISION=		1

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKG}}
MASTER_SITES=		${HOMEPAGE}/archive/
MASTER_REPOSITORY=	git ${HOMEPAGE}.git

CATEGORIES=		wip
ROS_COMMENT=		PCL (Point Cloud Library) ROS interface stack

include ../../meta-pkgs/ros-base/Makefile.common

include ../../wip/ros-pcl-msgs/depend.mk
include ../../wip/mk/sysdep/pcl.mk

include ../../devel/ros-cmake-modules/depend.mk
include ../../devel/ros-nodelet-core/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../middleware/ros-dynamic-reconfigure/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
