# robotpkg Makefile for:	wip/hpp-universal-robot
# Created:			Guilhem Saurel on Fri, 10 Oct 2018
#

HPP_PACKAGE=	hpp-universal-robot
HPP_COMMENT=	Data specific to robots ur5 and ur10 for hpp-corbaserver
HPP_VERSION=	4.5.0

CATEGORIES=	wip

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../meta-pkgs/hpp/Makefile.common

include ../../wip/ros-universal-robot/depend.mk
include ../../devel/ros-xacro/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

export PYTHONPATH=		$(word 1,${PREFIX.ros-universal-robot})/lib/python${PYTHON_VERSION}/dist-packages:$(word 1,${PREFIX.ros-universal-robot})/lib/python${PYTHON_VERSION}/site-packages
export ROS_PACKAGE_PATH=	$(word 1,${PREFIX.ros-universal-robot}):${PREFIX}
PKG_CONFIG_PATH=		$(word 1,${PREFIX.ros-universal-robot})/lib/pkgconfig
CMAKE_PREFIX_PATH+=		$(word 1,${PREFIX.ros-universal-robot})
