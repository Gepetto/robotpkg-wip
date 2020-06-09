# robotpkg depend.mk for:	wip/pal-transmissions
# Created:			Olivier Stasse on Thu, 18 Apr 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_TRANSMISSIONS_DEPEND_MK:=	${PAL_TRANSMISSIONS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-transmissions
endif

ifeq (+,$(PAL_TRANSMISSIONS_DEPEND_MK)) # --------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.pal-transmissions?=	${PREFER.pal}

DEPEND_USE+=			pal-transmissions

DEPEND_ABI.pal-transmissions?=\
	pal-transmissions>=0.2.3
DEPEND_DIR.pal-transmissions?=\
	../../wip/pal-transmissions

SYSTEM_SEARCH.pal-transmissions=\
  'include/pal_transmissions/actuator_temperature_interface.h'	\
  'share/pal_hardware_interfaces/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_hardware_interfaces.pc:/Version/s/[^0-9.]//gp'

endif # PAL_TRANSMISSIONS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
