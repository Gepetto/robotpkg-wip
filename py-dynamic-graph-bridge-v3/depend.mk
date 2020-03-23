# robotpkg Makefile for:	wip/py-dynamic-graph-bridge-v3
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_ROS_DYNAMICGRAPHBRIDGE_V3_DEPEND_MK:=	${PY_ROS_DYNAMICGRAPHBRIDGE_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-dynamic-graph-bridge-v3
endif

ifeq (+,$(PY_ROS_DYNAMICGRAPHBRIDGE_V3_DEPEND_MK)) # --------------------------------------

DEPEND_USE+=			py-dynamic-graph-bridge-v3
ROS_DEPEND_USE+=		py-dynamic-graph-bridge-v3

DEPEND_ABI.ros+=		ros>=groovy

DEPEND_ABI.py-dynamic-graph-bridge-v3?=		${PKGTAG.python-}dynamic-graph-bridge-v3>=3.0.0
DEPEND_DIR.py-dynamic-graph-bridge-v3?=		../../wip/py-dynamic-graph-bridge-v3

SYSTEM_SEARCH.py-dynamic-graph-bridge-v3=\
  'include/dynamic_graph_bridge/config.hh:/DYNAMIC_GRAPH_BRIDGE_VERSION /s/[^0-9.]//gp'				\
  'lib/pkgconfig/dynamic_graph_bridge.pc:/Version/s/[^0-9.]//gp'						\
  'lib/cmake/dynamic_graph_bridge/dynamic_graph_bridgeConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'share/dynamic_graph_bridge/robot_pose_publisher'								\
  '${PYTHON_SITELIB}/dynamic_graph/ros/ros.py'


# headers leak the ros dependency ...
include ../../middleware/ros-comm/depend.mk

include ../../mk/sysdep/python.mk

endif # PY_ROS_DYNAMICGRAPHBRIDGE_V3_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
