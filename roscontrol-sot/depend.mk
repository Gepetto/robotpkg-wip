# robotpkg Makefile for:	wip/dynamic-graph-bridge
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROSCONTROL_SOT_DEPEND_MK:=	${ROSCONTROL_SOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			roscontrol-sot
endif

ifeq (+,$(ROSCONTROL_SOT_DEPEND_MK)) # --------------------------------------

DEPEND_USE+=			roscontrol-sot
ROS_DEPEND_USE+=		roscontrol-sot

DEPEND_ABI.ros+=		ros>=groovy

DEPEND_ABI.roscontrol-sot?=		roscontrol-sot>=0.0.3
DEPEND_DIR.roscontrol-sot?=		../../wip/roscontrol-sot

DEPEND_ABI.roscontrol-sot.groovy?=	roscontrol-sot>=0.0.3
DEPEND_ABI.roscontrol-sot.hydro?=	roscontrol-sot>=0.0.3

SYSTEM_SEARCH.roscontrol-sot=\
  'include/roscontrol_sot/config.hh'				\
  'lib/librcsot_controller.so'					\
  'lib/pkgconfig/roscontrol_sot.pc:/Version/s/[^0-9.]//gp'	\
  'share/controller_interface/cmake/controller_interfaceConfig.cmake'

# headers leak the ros dependency ...
include ../../middleware/ros-comm/depend.mk

include ../../mk/sysdep/python.mk

endif # ROS_REALTIMETOOLS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
