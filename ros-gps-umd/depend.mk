# robotpkg depend.mk for:	interface/ros-gps-umd
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
ROS_GPS_UMD_DEPEND_MK:= ${ROS_GPS_UMD_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      ros-gps-umd
endif

ifeq (+,$(ROS_GPS_UMD_DEPEND_MK)) # ---------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-gps-umd?=    ${PREFER.ros-base}
SYSTEM_PREFIX.ros-gps-umd?= ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=      ros-gps-umd
ROS_DEPEND_USE+=    ros-gps-umd

DEPEND_ABI.ros-gps-umd?=  ros-gps-umd>=0.2.0
DEPEND_DIR.ros-gps-umd= ../../wip/ros-gps-umd

DEPEND_ABI.ros-gps-umd.groovy += ros-gps-umd>=0.2.0
DEPEND_ABI.ros-gps-umd.hydro += ros-gps-umd>=0.2.0
DEPEND_ABI.ros-gps-umd.indigo += ros-gps-umd>=0.2.0
DEPEND_ABI.ros-gps-umd.jade += ros-gps-umd>=0.2.0
DEPEND_ABI.ros-gps-umd.kinetic += ros-gps-umd>=0.2.0
DEPEND_ABI.ros-gps-umd.lunar += ros-gps-umd>=0.2.0
DEPEND_ABI.ros-gps-umd.melodic += ros-gps-umd>=0.2.0

# Files from gps_common and from gpsd_client
SYSTEM_SEARCH.ros-gps-umd=\
  'include/gps_common/conversions.h'                        \
  'include/gps_common/GPSFix.h'                             \
  'include/gps_common/GPSStatus.h'                          \
  'share/gps_common/package.xml:/<version>/s/[^0-9.]//gp'   \
  'lib/pkgconfig/gps_common.pc:/Version/s/[^0-9.]//gp'      \
  'lib/gps_common/fix_translator'                           \
  'lib/gps_common/utm_odometry_node'                        \
                                                            \
  'share/gpsd_client/package.xml:/<version>/s/[^0-9.]//gp'  \
  'lib/pkgconfig/gpsd_client.pc:/Version/s/[^0-9.]//gp'     \
  'lib/gpsd_client/gpsd_client'

endif # ROS_GPS_UMD_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}






