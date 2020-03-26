# robotpkg Makefile for:	wip/ros-image-pipeline
# Created:			Guilhem Saurel on Tue, 18 Feb 2020
#

ROS_PKG=		image_pipeline
ROS_REPO=		ros-perception
ROS_VERSION=		1.14.0
ROS_METAPKG=		yes

PKGNAME=		ros-$(subst _,-,${ROS_PKG})-${ROS_VERSION}

CATEGORIES=		wip
ROS_COMMENT=		An image processing pipeline for ROS

include ../../meta-pkgs/ros-base/Makefile.common

# Replace python interpreter in source files
SUBST_CLASSES+=		py-interp
SUBST_FILES.py-interp+=	*/*/*.py */*/*/*.py
SUBST_FILES.py-interp+=	*/*/*.cfg

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-cmake-modules/depend.mk
include ../../devel/ros-nodelet-core/depend.mk
include ../../image/ros-vision-opencv/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../math/ros-geometry2/depend.mk
include ../../middleware/ros-dynamic-reconfigure/depend.mk
include ../../mk/sysdep/gtk.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
