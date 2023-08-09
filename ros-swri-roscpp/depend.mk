# robotpkg depend.mk for:	devel/ros-swri-roscpp
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
ROS_SWRI_ROSCPP_DEPEND_MK:= ${ROS_SWRI_ROSCPP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      ros-swri-roscpp
endif

ifeq (+,$(ROS_SWRI_ROSCPP_DEPEND_MK)) # ---------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-swri-roscpp?=    ${PREFER.ros-base}
SYSTEM_PREFIX.ros-swri-roscpp?= ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=      ros-swri-roscpp
ROS_DEPEND_USE+=    ros-swri-roscpp

DEPEND_ABI.ros-swri-roscpp?=  ros-swri-roscpp>=2.3.0
DEPEND_DIR.ros-swri-roscpp= ../../wip/ros-swri-roscpp
SYSTEM_SEARCH.ros-swri-roscpp=\
  'share/swri_roscpp/package.xml' \
  'share/swri_roscpp/cmake/swri_roscppConfig-version.cmake' \
  'share/swri_roscpp/cmake/swri_roscppConfig.cmake' \
  'share/swri_roscpp/param_example.launch' \
  'include/swri_roscpp/subscriber.h' \
  'include/swri_roscpp/subscriber_impl.h' \
  'include/swri_roscpp/timer.h' \
  'include/swri_roscpp/latched_subscriber.h' \
  'include/swri_roscpp/optional_diagnosed_publisher.h' \
  'include/swri_roscpp/service_server.h' \
  'include/swri_roscpp/service_server_statistics.h' \
  'include/swri_roscpp/publisher.h' \
  'include/swri_roscpp/service_server_impl.h' \
  'include/swri_roscpp/swri_roscpp.h' \
  'include/swri_roscpp/timer_impl.h' \
  'include/swri_roscpp/parameters.h' \
  'lib/pkgconfig/swri_roscpp.pc:/Version/s/[^0-9.]//gp' \
  'lib/swri_roscpp/latched_subscriber_test' \
  'lib/swri_roscpp/subscriber_test' \
  'lib/swri_roscpp/param_example'

endif # ROS_SWRI_ROSCPP_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}
