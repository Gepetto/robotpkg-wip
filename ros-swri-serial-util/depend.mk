# robotpkg depend.mk for:	devel/ros-swri-serial-util
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
ROS_SWRI_SERIAL_UTIL_DEPEND_MK:= ${ROS_SWRI_SERIAL_UTIL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      ros-swri-serial-util
endif

ifeq (+,$(ROS_SWRI_SERIAL_UTIL_DEPEND_MK)) # -------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-swri-serial-util?=    ${PREFER.ros-base}
SYSTEM_PREFIX.ros-swri-serial-util?= ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=      ros-swri-serial-util
ROS_DEPEND_USE+=    ros-swri-serial-util

DEPEND_ABI.ros-swri-serial-util?=  ros-swri-serial-util>=2.3.0
DEPEND_DIR.ros-swri-serial-util= ../../wip/ros-swri-serial-util
SYSTEM_SEARCH.ros-swri-serial-util=\
  'share/swri_serial_util/package.xml' \
  'share/swri_serial_util/cmake/swri_serial_utilConfig.cmake' \
  'share/swri_serial_util/cmake/swri_serial_utilConfig-version.cmake' \
  'include/swri_serial_util/serial_port.h' \
  'lib/pkgconfig/swri_serial_util.pc:/Version/s/[^0-9.]//gp' \
  'lib/libswri_serial_util.so'


endif # ROS_SWRI_SERIAL_UTIL_DEPEND_MK -------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}
