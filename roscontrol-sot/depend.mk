# robotpkg Makefile for:	wip/dynamic-graph-bridge
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROSCONTROL_SOT_DEPEND_MK:=	${ROSCONTROL_SOT_DEPEND_MK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			roscontrol_sot
endif

ifeq (+,$(ROSCONTROL_SOT_DEPEND_MK_DEPEND_MK)) # --------------------------------------

DEPEND_USE+=			roscontrol_sot
ROS_DEPEND_USE+=		roscontrol_sot

DEPEND_ABI.ros+=		ros>=groovy

DEPEND_ABI.roscontrol_sot?=		roscontrol_sot>=1.0.0
DEPEND_DIR.roscontrol_sot?=		../../wip/roscontrol_sot

DEPEND_ABI.roscontrol_sot.groovy?=	roscontrol_sot>=1.0.0
DEPEND_ABI.roscontrol_sot.hydro?=	roscontrol_sot>=1.0.0

SYSTEM_SEARCH.roscontrol_sot=\
  'include/roscontrol_sot/config.hh'				\
  'lib/librcsot_controller.so'					\
  'lib/pkgconfig/roscontrol_sot.pc:/Version/s/[^0-9.]//gp'	\
  'share/controller_interface/cmake/controller_interfaceConfig.cmake'

# headers leak the ros dependency ...
include ../../middleware/ros-comm/depend.mk

include ../../mk/sysdep/python.mk

endif # ROS_REALTIMETOOLS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
