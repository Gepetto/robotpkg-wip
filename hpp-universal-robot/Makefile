# robotpkg Makefile for:	wip/hpp-universal-robot
# Created:			Guilhem Saurel on Fri, 10 Oct 2018
#

HPP_PACKAGE=	hpp-universal-robot
HPP_COMMENT=	Data specific to robots ur5 and ur10 for hpp-corbaserver
HPP_VERSION=	4.2.1

CATEGORIES=	wip

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

export ROS_PACKAGE_PATH+=	${PREFIX.hpp-universal-robot}/share

include ../../meta-pkgs/hpp/Makefile.common

include ../../wip/ros-universal-robot/depend.mk
include ../../devel/ros-xacro/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
