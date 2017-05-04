# robotpkg depend.mk for:	wip/talos-ros-controllers
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_ROS_CONTROLLERS_DEPEND_MK:=	${TALOS_ROS_CONTROLLERS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-ros-controllers
endif

ifeq (+,$(TALOS_ROS_CONTROLLERS_DEPEND_MK)) # ----------------------------------

PREFER.talos-ros-controllers?=	robotpkg

DEPEND_USE+=			talos-ros-controllers

DEPEND_ABI.talos-ros-controllers?=	talos-ros-controllers>=0.2.8
DEPEND_DIR.talos-ros-controllers?=	../../wip/talos-ros-controllers

SYSTEM_SEARCH.talos-ros-controllers=\
  'include/talos_joint_state_controller/controller_loader.h'		\
  'lib/libtalos_joint_state_controller.so'				\
  'share/talos_joint_state_controller/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_joint_state_controller.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_ROS_CONTROLLERS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
