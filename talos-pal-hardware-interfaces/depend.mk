# robotpkg depend.mk for:	wip/talos_pal_hardware_interfaces
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TALOS_PAL_HARDWARE_INTERFACES_DEPEND_MK:=	${TALOS_PAL_HARDWARE_INTERFACES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		talos-pal-hardware-interfaces
endif

ifeq (+,$(TALOS_PAL_HARDWARE_INTERFACES_DEPEND_MK)) # -------------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.talos-pal-hardware-interfaces?=	${PREFER.ros-base}
SYSTEM_PREFIX.talos-pal_hardware-interfaces?=${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		talos-pal-hardware-interfaces
ROS_DEPEND_USE+=	talos-pal-hardware-interfaces

DEPEND_ABI.talos-pal-hardware-interfaces?=	ros-talos-pal-hardware-interfaces>=0.0.2
DEPEND_DIR.talos-pal-hardware-interfaces?=	../../wip/talos-pal-hardware-interfaces

SYSTEM_SEARCH.talos-pal-hardware-interfaces=\
	include/pal_hardware_interfaces/actuator_temperature_interface.h		\
	'share/pal_hardware_interfaces/package.xml:/<version>/s/[^0-9.]//gp'		\
	'lib/pkgconfig/pal_hardware_interfaces.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_PAL_HARDWARE_INTERFACES_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
