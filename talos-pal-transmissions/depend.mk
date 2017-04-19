# robotpkg depend.mk for:	wip/talos-pal-transmissions
# Created:			Olivier Stasse on Thu, 18 Apr 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_PAL_TRANSMISSIONSIFACES_DEPEND_MK:=	${TALOS_PAL_TRANSMISSIONSIFACES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-pal-transmissions
endif

ifeq (+,$(TALOS_PAL_TRANSMISSIONSIFACES_DEPEND_MK)) # --------------------------------

PREFER.talos-pal-transmissions?=	robotpkg

DEPEND_USE+=			talos-pal-transmissions

DEPEND_ABI.talos-pal-transmissions?=\
	talos-pal-transmissions>=0.2.3
DEPEND_DIR.talos-pal-transmissions?=\
	../../wip/talos-pal-transmissions

SYSTEM_SEARCH.talos-pal-transmissions=\
  'include/talos_pal_transmissions/actuator_temperature_interface.h'	\
  'share/pal_hardware_interfaces/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_hardware_interfaces.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_PAL_TRANSMISSIONSIFACES_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
