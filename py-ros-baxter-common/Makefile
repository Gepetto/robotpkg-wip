# robotpkg Makefile for:	wip/py38-ros-baxter-common
# Created:			Guilhem Saurel on Thu,  9 Apr 2020
#

ROS_PKG=		baxter_common
ROS_METAPKG=		yes
ROS_VERSION=		1.2.0
ROS_REPO=		rethinkrobotics
PKGREVISION=		1
PKGNAME=		${PKGTAG.python-}ros-$(subst _,-,${ROS_PKG})-${ROS_VERSION}

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ROS_REPO}/${ROS_PKG}}
MASTER_REPOSITORY=	git ${HOMEPAGE}.git

# old package name and other Python versions.
CONFLICTS+=		${NAME}-[0-9]*
CONFLICTS+=		py[0-9][0-9]-${NAME}-[0-9]*

CATEGORIES=		wip
ROS_COMMENT=		ROS Messages and robot description files for the Baxter Research Robot

include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
