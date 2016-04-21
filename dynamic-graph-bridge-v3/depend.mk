# robotpkg Makefile for:	wip/dynamic-graph-bridge
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_DYNAMICGRAPHBRIDGE_V3_DEPEND_MK:=	${ROS_DYNAMICGRAPHBRIDGE_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			dynamic-graph-bridge-v3
endif

ifeq (+,$(ROS_DYNAMICGRAPHBRIDGE_V3_DEPEND_MK)) # --------------------------------------

include ../../wip/dynamic-graph-bridge-msgs/depend.mk

DEPEND_USE+=			dynamic-graph-bridge-v3
ROS_DEPEND_USE+=		dynamic-graph-bridge-v3

DEPEND_ABI.ros+=		ros>=groovy

DEPEND_ABI.dynamic-graph-bridge-v3?=		dynamic-graph-bridge-v3>=3.0.0
DEPEND_DIR.dynamic-graph-bridge-v3?=		../../wip/dynamic-graph-bridge-v3

DEPEND_ABI.dynamic-graph-bridge-v3.groovy?=	dynamic-graph-bridge-v3>=3.0.0
DEPEND_ABI.dynamic-graph-bridge-v3.hydro?=	dynamic-graph-bridge-v3>=3.0.0

SYSTEM_SEARCH.dynamic-graph-bridge-v3=\
  'include/dynamic_graph_bridge/config.h'\
  'lib/pkgconfig/dynamic_graph_bridge.pc'\
  'lib/librobot_model.so'\
  'share/dynamic_graph_bridge/robot_pose_publisher'\
  '${PYTHON_SITELIB}/dynamic_graph/ros/ros.py'

endif # ROS_REALTIMETOOLS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
