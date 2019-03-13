# robotpkg Makefile for:	wip/ros-moveit
# Created:			Guilhem Saurel on Wed, 19 Dec 2018
#

ROS_PKG=		baxter_common
ROS_METAPKG=		yes
ROS_VERSION=		1.2.0
ROS_REPO=		rethinkrobotics

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKG}}
MASTER_SITES=		${HOMEPAGE}/archive/v
MASTER_REPOSITORY=	git ${HOMEPAGE}.git

CATEGORIES=		wip
ROS_COMMENT=		ROS Messages and robot description files for the Baxter Research Robot

include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
