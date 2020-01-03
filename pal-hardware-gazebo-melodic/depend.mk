# robotpkg depend.mk for:	wip/pal-hardware-gazebo-melodic
# Created:			Olivier Stasse on Thu, 2 Jan 2020
#
DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_HARDWARE_GAZEBO_MELODIC_DEPEND_MK:=	${PAL_HARDWARE_GAZEBO_MELODIC_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-hardware-gazebo-melodic
endif

ifeq (+,$(PAL_HARDWARE_GAZEBO_MELODIC_DEPEND_MK)) # ---------------------------------

PREFER.pal-hardware-gazebo-melodic?=	robotpkg

DEPEND_USE+=			pal-hardware-gazebo-melodic

DEPEND_ABI.pal-hardware-gazebo-melodic?=\
	pal-hardware-gazebo-melodic>=1.0.0
DEPEND_DIR.pal-hardware-gazebo-melodic?=\
	../../wip/pal-hardware-gazebo-melodic

SYSTEM_SEARCH.pal-hardware-gazebo-melodic=\
  'include/pal_hardware_gazebo/pal_hardware_gazebo.h'	\
  'share/pal_hardware_gazebo/cmake/pal_hardware_gazeboConfig.cmake' \
  'share/pal_hardware_gazebo/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_hardware_gazebo.pc:/Version/s/[^0-9.]//gp'

endif # PAL_HARDWARE_GAZEBO_MELODIC_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
