# robotpkg Makefile for:	wip/hpp-universal-robot
# Created:			Guilhem Saurel on Fri, 10 Oct 2018
#

HPP_PACKAGE=	hpp-universal-robot
HPP_COMMENT=	Data specific to robots ur5 and ur10 for hpp-corbaserver
HPP_VERSION=	4.2.1

# Workaround include of both Makefile.common
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
DIST_SUBDIR=

CATEGORIES=	wip

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../meta-pkgs/hpp/Makefile.common
include ../../meta-pkgs/ros-base/Makefile.common

include ../../wip/ros-universal-robot/depend.mk
include ../../devel/ros-xacro/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
