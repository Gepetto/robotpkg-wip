# robotpkg depend.mk for:	hardware/infuse-novatel-gps-driver-ros
# Created:			Ellon Paiva Mendes on Thu,  2 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
INFUSE_NOVATEL_GPS_DRIVER_ROS_DEPEND_MK:= ${INFUSE_NOVATEL_GPS_DRIVER_ROS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      infuse-novatel-gps-driver-ros
endif

ifeq (+,$(INFUSE_NOVATEL_GPS_DRIVER_ROS_DEPEND_MK)) # ---------------------------------------

DEPEND_USE+=      infuse-novatel-gps-driver-ros
PREFER.infuse-novatel-gps-driver?=    robotpkg

DEPEND_ABI.infuse-novatel-gps-driver?=  infuse-novatel-gps-driver>=0.1.0-ros
DEPEND_DIR.infuse-novatel-gps-driver= ../../wip/infuse-novatel-gps-driver-ros

# Files from infuse_novatel_gps_driver and from infuse_novatel_msgs
SYSTEM_SEARCH.infuse-novatel-gps-driver-ros=\
  'share/infuse_novatel_gps_driver/package.xml'\
  'share/infuse_novatel_gps_driver/launch/tester_for_usb.launch'\
  'share/infuse_novatel_gps_driver/nodelet_plugins.xml'\
  'share/infuse_novatel_gps_driver/cmake/infuse_novatel_gps_driverConfig.cmake'\
  'share/infuse_novatel_gps_driver/cmake/infuse_novatel_gps_driverConfig-version.cmake'\
  'include/infuse_novatel_gps_driver/novatel_message_extractor.h'\
  'include/infuse_novatel_gps_driver/novatel_sentence.h'\
  'include/infuse_novatel_gps_driver/parsers/bestpos.h'\
  'include/infuse_novatel_gps_driver/parsers/bestvel.h'\
  'include/infuse_novatel_gps_driver/parsers/header.h'\
  'include/infuse_novatel_gps_driver/parsers/gpgga.h'\
  'include/infuse_novatel_gps_driver/parsers/gpgsv.h'\
  'include/infuse_novatel_gps_driver/parsers/inspva.h'\
  'include/infuse_novatel_gps_driver/parsers/range.h'\
  'include/infuse_novatel_gps_driver/parsers/corrimudata.h'\
  'include/infuse_novatel_gps_driver/parsers/parse_exception.h'\
  'include/infuse_novatel_gps_driver/parsers/inscov.h'\
  'include/infuse_novatel_gps_driver/parsers/time.h'\
  'include/infuse_novatel_gps_driver/parsers/parsing_utils.h'\
  'include/infuse_novatel_gps_driver/parsers/message_parser.h'\
  'include/infuse_novatel_gps_driver/parsers/gprmc.h'\
  'include/infuse_novatel_gps_driver/parsers/trackstat.h'\
  'include/infuse_novatel_gps_driver/parsers/gpgsa.h'\
  'include/infuse_novatel_gps_driver/parsers/insstdev.h'\
  'include/infuse_novatel_gps_driver/binary_header.h'\
  'include/infuse_novatel_gps_driver/binary_message.h'\
  'include/infuse_novatel_gps_driver/novatel_gps.h'\
  'include/infuse_novatel_gps_driver/nmea_sentence.h'\
  'lib/pkgconfig/infuse_novatel_gps_driver.pc'\
  'lib/infuse_novatel_gps_driver/novatel_gps_node'\
  'lib/libinfuse_novatel_gps_driver_nodelets.so'\
  'lib/libinfuse_novatel_gps_driver.so'\
  \
  'share/roseus/ros/infuse_novatel_msgs/msg/Ack.l'\
  'share/roseus/ros/infuse_novatel_msgs/msg/INSPVAX.l'\
  'share/roseus/ros/infuse_novatel_msgs/msg/CommonFooter.l'\
  'share/roseus/ros/infuse_novatel_msgs/msg/CommonHeader.l'\
  'share/roseus/ros/infuse_novatel_msgs/msg/INSCOV.l'\
  'share/roseus/ros/infuse_novatel_msgs/msg/CORRIMUDATA.l'\
  'share/roseus/ros/infuse_novatel_msgs/msg/BESTPOS.l'\
  'share/roseus/ros/infuse_novatel_msgs/manifest.l'\
  'share/infuse_novatel_msgs/msg/CORRIMUDATA.msg'\
  'share/infuse_novatel_msgs/msg/INSPVAX.msg'\
  'share/infuse_novatel_msgs/msg/INSCOV.msg'\
  'share/infuse_novatel_msgs/msg/CommonHeader.msg'\
  'share/infuse_novatel_msgs/msg/BESTPOS.msg'\
  'share/infuse_novatel_msgs/msg/CommonFooter.msg'\
  'share/infuse_novatel_msgs/msg/Ack.msg'\
  'share/infuse_novatel_msgs/package.xml'\
  'share/infuse_novatel_msgs/cmake/infuse_novatel_msgs-msg-paths.cmake'\
  'share/infuse_novatel_msgs/cmake/infuse_novatel_msgsConfig.cmake'\
  'share/infuse_novatel_msgs/cmake/infuse_novatel_msgsConfig-version.cmake'\
  'share/infuse_novatel_msgs/cmake/infuse_novatel_msgs-msg-extras.cmake'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/_package_BESTPOS.lisp'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/INSCOV.lisp'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/INSPVAX.lisp'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/infuse_novatel_msgs-msg.asd'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/_package_CORRIMUDATA.lisp'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/_package_CommonFooter.lisp'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/Ack.lisp'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/CommonFooter.lisp'\
  'share/common-lisp/ros/infuse_novatel_msgs/msg/_package_CommonHeader.lisp'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/BESTPOS.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/CommonHeader.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/INSCOV.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/INSPVAX.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/CORRIMUDATA.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/_index.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/CommonFooter.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/msg/Ack.js'\
  'share/gennodejs/ros/infuse_novatel_msgs/_index.js'\
  'include/infuse_novatel_msgs/CORRIMUDATA.h'\
  'include/infuse_novatel_msgs/BESTPOS.h'\
  'include/infuse_novatel_msgs/Ack.h'\
  'include/infuse_novatel_msgs/INSPVAX.h'\
  'include/infuse_novatel_msgs/INSCOV.h'\
  'include/infuse_novatel_msgs/CommonHeader.h'\
  'include/infuse_novatel_msgs/CommonFooter.h'\
  'lib/pkgconfig/infuse_novatel_msgs.pc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_CORRIMUDATA.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_CommonHeader.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_INSPVAX.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/__init__.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_INSPVAX.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_CommonFooter.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_BESTPOS.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_BESTPOS.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_Ack.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_Ack.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_INSCOV.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_CommonFooter.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_INSCOV.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/__init__.pyc'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_CommonHeader.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/msg/_CORRIMUDATA.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/__init__.py'\
  'lib/python2.7/dist-packages/infuse_novatel_msgs/__init__.pyc'

endif # INFUSE_NOVATEL_GPS_DRIVER_ROS_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}

