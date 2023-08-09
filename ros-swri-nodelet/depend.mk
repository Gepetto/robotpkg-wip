# robotpkg depend.mk for:	devel/ros-swri-nodelet
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
ROS_SWRI_NODELET_DEPEND_MK:= ${ROS_SWRI_NODELET_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      ros-swri-nodelet
endif

ifeq (+,$(ROS_SWRI_NODELET_DEPEND_MK)) # ---------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-swri-nodelet?=    ${PREFER.ros-base}
SYSTEM_PREFIX.ros-swri-nodelet?= ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=      ros-swri-nodelet
ROS_DEPEND_USE+=    ros-swri-nodelet

DEPEND_ABI.ros-swri-nodelet?=  ros-swri-nodelet>=2.3.0
DEPEND_DIR.ros-swri-nodelet= ../../wip/ros-swri-nodelet
SYSTEM_SEARCH.ros-swri-nodelet=\
  'share/swri_nodelet/nodelet.cpp.in' \
  'share/swri_nodelet/package.xml' \
  'share/swri_nodelet/nodelet_plugins.xml' \
  'share/swri_nodelet/cmake/swri_nodelet-extras.cmake' \
  'share/swri_nodelet/cmake/swri_nodeletConfig.cmake' \
  'share/swri_nodelet/cmake/swri_nodeletConfig-version.cmake' \
  'include/swri_nodelet/class_list_macros.h' \
  'lib/pkgconfig/swri_nodelet.pc:/Version/s/[^0-9.]//gp' \
  'lib/swri_nodelet/nodelet'

endif # ROS_SWRI_NODELET_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}
