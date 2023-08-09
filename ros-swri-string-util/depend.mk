# robotpkg depend.mk for:	devel/ros-swri-string-util
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
ROS_SWRI_STRING_UTIL_DEPEND_MK:= ${ROS_SWRI_STRING_UTIL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      ros-swri-string-util
endif

ifeq (+,$(ROS_SWRI_STRING_UTIL_DEPEND_MK)) # -------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-swri-string-util?=    ${PREFER.ros-base}
SYSTEM_PREFIX.ros-swri-string-util?= ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=      ros-swri-string-util
ROS_DEPEND_USE+=    ros-swri-string-util

DEPEND_ABI.ros-swri-string-util?=  ros-swri-string-util>=2.3.0
DEPEND_DIR.ros-swri-string-util= ../../wip/ros-swri-string-util
SYSTEM_SEARCH.ros-swri-string-util=\
  'include/swri_string_util/string_util.h' \
  'lib/libswri_string_util.so' \
  'lib/pkgconfig/swri_string_util.pc:/Version/s/[^0-9.]//gp' \
  'share/swri_string_util/cmake/swri_string_utilConfig-version.cmake' \
  'share/swri_string_util/cmake/swri_string_utilConfig.cmake' \
  'share/swri_string_util/package.xml'

endif # ROS_SWRI_STRING_UTIL_DEPEND_MK -------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}
