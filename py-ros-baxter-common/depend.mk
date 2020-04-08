# robotpkg depend.mk for:		wip/py38-ros-baxter-common
# Created:				Guilhem Saurel on Thu,  9 Apr 2020
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
PY_ROS_BAXTER_COMMON_DEPEND_MK:=	${PY_ROS_BAXTER_COMMON_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				py-ros-baxter-common
endif

ifeq (+,$(PY_ROS_BAXTER_COMMON_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.prefs.mk

ifeq (18.04,${OS_VERSION})
  PREFER.py-ros-baxter-common?=		robotpkg
else
  PREFER.py-ros-baxter-common?=		${PREFER.ros-base}
  SYSTEM_PREFIX.py-ros-baxter-common?=	${SYSTEM_PREFIX.ros-base}
endif

DEPEND_USE+=				py-ros-baxter-common
ROS_DEPEND_USE+=			py-ros-baxter-common

DEPEND_ABI.py-ros-baxter-common?=	${PKGTAG.python-}ros-baxter-common>=1.2.0
DEPEND_DIR.py-ros-baxter-common?=	../../wip/py-ros-baxter-common

SYSTEM_SEARCH.py-ros-baxter-common=					\
	'include/baxter_core_msgs/OpenCamera.h'				\
	'lib/pkgconfig/baxter_description.pc:/Version/s/[^0-9.]//gp'	\
	'${PYTHON_SYSLIBSEARCH}/baxter_core_msgs/__init__.py'

CMAKE_PREFIX_PATH.ros-baxter-common=   ${PREFIX.ros-baxter-common}

endif # PY_ROS_BAXTER_COMMON_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
