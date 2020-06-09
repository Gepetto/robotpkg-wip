# robotpkg depend.mk for:	wip/pal-gripper
# Created:			Olivier Stasse on Tue, 8 May 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_GRIPPER_DEPEND_MK:=	${PAL_GRIPPER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-gripper
endif

ifeq (+,$(PAL_GRIPPER_DEPEND_MK)) # ----------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.pal-gripper?=	${PREFER.pal}

DEPEND_USE+=			pal-gripper

DEPEND_ABI.pal-gripper?=	pal-gripper>=0.0.13
DEPEND_DIR.pal-gripper?=	../../wip/pal-gripper

SYSTEM_SEARCH.pal-gripper=\
  'lib/pal_gripper_controller_configuration/home_gripper.py'		\
  'share/pal_gripper/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_gripper.pc:/Version/s/[^0-9.]//gp'  \
  'share/pal_gripper/cmake/pal_gripperConfig.cmake' \
  'share/pal_gripper_gazebo/cmake/pal_gripper_gazeboConfig.cmake' \
  'share/pal_gripper_controller_configuration/cmake/pal_gripper_controller_configurationConfig.cmake' \
  'share/pal_gripper_controller_configuration_gazebo/cmake/pal_gripper_controller_configuration_gazeboConfig.cmake' \
  'share/pal_gripper_description/cmake/pal_gripper_descriptionConfig.cmake' \
  'share/pal_parallel_gripper_wrapper/cmake/pal_parallel_gripper_wrapperConfig.cmake'

endif # PAL_GRIPPER_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
