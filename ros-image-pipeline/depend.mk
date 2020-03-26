# robotpkg depend.mk for:	wip/ros-image-pipeline
# Created:			Guilhem Saurel on Tue, 18 Feb 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_IMAGE_PIPELINE_DEPEND_MK:=	${ROS_IMAGE_PIPELINE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ros-image-pipeline
endif

ifeq (+,$(ROS_IMAGE_PIPELINE_DEPEND_MK)) # ------------------------------------

include ../../meta-pkgs/ros-base/depend.common

PREFER.ros-image-pipeline?=	${PREFER.ros-base}

DEPEND_USE+=			ros-image-pipeline
ROS_DEPEND_USE+=		ros-image-pipeline

DEPEND_ABI.ros-image-pipeline?=	ros-image-pipeline>=1.14.0
DEPEND_DIR.ros-image-pipeline?=	../../wip/ros-image-pipeline

SYSTEM_SEARCH.ros-image-pipeline=\
  'share/image_pipeline/package.xml:/<version>/s/[^0-9.]//gp'

endif # ROS_IMAGE_PIPELINE_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
