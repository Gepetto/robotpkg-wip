# robotpkg depend.mk for:	wip/talos-pal-hardware-gazebo
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_PAL_HARDWARE_GAZEBO_DEPEND_MK:=	${TALOS_PAL_HARDWARE_GAZEBO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-pal-hardware-gazebo
endif

ifeq (+,$(TALOS_PAL_HARDWARE_GAZEBO_DEPEND_MK)) # ---------------------------------

PREFER.talos-pal-hardware-gazebo?=	robotpkg

DEPEND_USE+=			talos-pal-hardware-gazebo

DEPEND_ABI.talos-pal-hardware-gazebo?=\
	talos-pal-hardware-gazebo>=0.0.9
DEPEND_DIR.talos-pal-hardware-gazebo?=\
	../../wip/talos-pal-hardware-gazebo

SYSTEM_SEARCH.talos-pal-hardware-gazebo=\
  'include/talos_pal_hardware_gazebo/pal_hardware_gazebo.h'	\
  'share/talos_pal_hardware_gazebo/cmake/talos_pal_hardware_gazeboConfig.cmake' \
  'share/talos_pal_hardware_gazebo/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_pal_hardware_gazebo.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_PAL_HARDWARE_GAZEBO_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
