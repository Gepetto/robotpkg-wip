# robotpkg depend.mk for:	wip/pal-hardware-interfaces
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_HWIFACES_DEPEND_MK:=	${PAL_HWIFACES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-hardware-interfaces
endif

ifeq (+,$(PAL_HWIFACES_DEPEND_MK)) # ---------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.pal-hardware-interfaces?=	${PREFER.pal}

DEPEND_USE+=			pal-hardware-interfaces

DEPEND_ABI.pal-hardware-interfaces?=\
	pal-hardware-interfaces>=0.0.3
DEPEND_DIR.pal-hardware-interfaces?=\
	../../wip/pal-hardware-interfaces

SYSTEM_SEARCH.pal-hardware-interfaces=\
  'include/pal_hardware_interfaces/actuator_temperature_interface.h'	\
  'share/pal_hardware_interfaces/cmake/pal_hardware_interfacesConfig.cmake'	\
  'share/pal_hardware_interfaces/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_hardware_interfaces.pc:/Version/s/[^0-9.]//gp'

endif # PAL_HWIFACES_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
