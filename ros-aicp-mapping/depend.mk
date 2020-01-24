# robotpkg depend.mk for:	wip/ros-aicp-mapping
# Created:			Guilhem Saurel on Fri, 24 Jan 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_AICP_MAPPING_DEPEND_MK:=	${ROS_AICP_MAPPING_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-aicp-mapping
endif

ifeq (+,$(ROS_AICP_MAPPING_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
include ../../mk/robotpkg.prefs.mk
ifeq (18.04,${OS_VERSION})
  PREFER.ros-aicp-mapping?=		robotpkg
else
  PREFER.ros-aicp-mapping?=		${PREFER.ros-base}
  SYSTEM_PREFIX.ros-aicp-mapping?=	${SYSTEM_PREFIX.ros-base}
endif

DEPEND_USE+=				ros-aicp-mapping
ROS_DEPEND_USE+=			ros-aicp-mapping

DEPEND_ABI.ros-aicp-mapping?=		ros-aicp-mapping>=0.0.1
DEPEND_DIR.ros-aicp-mapping?=		../../wip/ros-aicp-mapping

SYSTEM_SEARCH.ros-aicp-mapping=\
	include/aicp_core/common.hpp					\
	'lib/pkgconfig/aicp_core.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-aicp-mapping=   ${PREFIX.ros-aicp-mapping}

endif # ROS_AICP_MAPPING_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
