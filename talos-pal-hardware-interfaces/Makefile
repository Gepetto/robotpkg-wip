# robotpkg Makefile for:	wip/talos_pal_hardware_interfaces
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

ROS_PKG=	talos_pal_hardware_interfaces
ROS_VERSION=	0.0.2

CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_JRL}talos/${ROS_PKG}/${ROS_PKG}-
ROS_COMMENT=	Hardware interfaces developped by PAL-Robotics
LICENSE=	openhrp-grx-license

include ../../meta-pkgs/ros-base/Makefile.common

SUBST_CLASSES+=		py-interp
SUBST_FILES.py-interp+=	src/actionlib/*.py
SUBST_FILES.py-interp+=	test/*.py
SUBST_FILES.py-interp+=	tools/*.py

USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../wip/talos-ros-control/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/robotpkg.mk
