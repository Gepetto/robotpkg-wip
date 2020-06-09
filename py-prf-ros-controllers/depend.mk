# robotpkg depend.mk for:	wip/py-prf-ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_PRF_ROS_CONTROLLERS_DEPEND_MK:=	${PY_PRF_ROS_CONTROLLERS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-prf-ros-controllers
endif

ifeq (+,$(PY_PRF_ROS_CONTROLLERS_DEPEND_MK)) # ----------------------------------

PREFER.ros-controllers?=	robotpkg

DEPEND_USE+=			py-prf-ros-controllers

DEPEND_ABI.py-prf-ros-controllers?=	${PKGTAG.python-}prf-ros-controllers>=0.2.8
DEPEND_DIR.py-prf-ros-controllers?=	../../wip/py-prf-ros-controllers

SYSTEM_SEARCH.py-prf-ros-controllers=\
  'lib/libjoint_state_controller.so'					\
  'share/joint_state_controller/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/joint_state_controller.pc:/Version/s/[^0-9.]//gp'	\
  'share/controller_interface/cmake/controller_interfaceConfig.cmake'

include ../../mk/sysdep/python.mk

endif # PY_PRF_ROS_CONTROLLERS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
