# robotpkg depend.mk for:	wip/ros-object-recognition-msgs
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_OBJECT_RECOGNITION_MSGS_DEPEND_MK:=	${ROS_OBJECT_RECOGNITION_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-object-recognition-msgs
endif

ifeq (+,$(ROS_OBJECT_RECOGNITION_MSGS_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-object-recognition-msgs?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-object-recognition-msgs?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=					ros-object-recognition-msgs
ROS_DEPEND_USE+=				ros-object-recognition-msgs

DEPEND_ABI.ros-object-recognition-msgs?=	ros-object-recognition-msgs>=0.4.1
DEPEND_DIR.ros-object-recognition-msgs?=	../../wip/ros-object-recognition-msgs

SYSTEM_SEARCH.ros-object-recognition-msgs=\
	include/object_recognition_msgs/ObjectType.h	\
	'lib/pkgconfig/object_recognition_msgs.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-object-recognition-msgs=  ${PREFIX.ros-object-recognition-msgs}

endif # ROS_OBJECT_RECOGNITION_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
