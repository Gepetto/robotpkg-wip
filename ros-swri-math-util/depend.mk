# robotpkg depend.mk for:	devel/ros-swri-math-util
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
ROS_SWRI_MATH_UTIL_DEPEND_MK:= ${ROS_SWRI_MATH_UTIL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      ros-swri-math-util
endif

ifeq (+,$(ROS_SWRI_MATH_UTIL_DEPEND_MK)) # ---------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-swri-math-util?=    ${PREFER.ros-base}
SYSTEM_PREFIX.ros-swri-math-util?= ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=      ros-swri-math-util
ROS_DEPEND_USE+=    ros-swri-math-util

DEPEND_ABI.ros-swri-math-util?=  ros-swri-math-util>=2.3.0
DEPEND_DIR.ros-swri-math-util= ../../wip/ros-swri-math-util

DEPEND_ABI.ros-swri-math-util.groovy += ros-swri-math-util>=2.3.0
DEPEND_ABI.ros-swri-math-util.hydro += ros-swri-math-util>=2.3.0
DEPEND_ABI.ros-swri-math-util.indigo += ros-swri-math-util>=2.3.0
DEPEND_ABI.ros-swri-math-util.jade += ros-swri-math-util>=2.3.0
DEPEND_ABI.ros-swri-math-util.kinetic += ros-swri-math-util>=2.3.0
DEPEND_ABI.ros-swri-math-util.lunar += ros-swri-math-util>=2.3.0
DEPEND_ABI.ros-swri-math-util.melodic += ros-swri-math-util>=2.3.0

SYSTEM_SEARCH.ros-swri-math-util=\
  'share/swri_math_util/package.xml'\
  'share/swri_math_util/cmake/swri_math_utilConfig-version.cmake'\
  'share/swri_math_util/cmake/swri_math_utilConfig.cmake'\
  'include/swri_math_util/random.h'\
  'include/swri_math_util/interpolation_1d.h'\
  'include/swri_math_util/ransac.h'\
  'include/swri_math_util/constants.h'\
  'include/swri_math_util/generic_ring_buffer.h'\
  'include/swri_math_util/stat_buffer.h'\
  'include/swri_math_util/trig_util.h'\
  'include/swri_math_util/math_util.h'\
  'lib/pkgconfig/swri_math_util.pc:/Version/s/[^0-9.]//gp'\
  'lib/libswri_math_util.so'

endif # ROS_SWRI_MATH_UTIL_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}

