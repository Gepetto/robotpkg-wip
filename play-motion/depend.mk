# robotpkg depend.mk for:	wip/play-motion
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PLAY_MOTION_DEPEND_MK:=	${PLAY_MOTION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			play-motion
endif

ifeq (+,$(PLAY_MOTION_DEPEND_MK)) # ---------------------------------

PREFER.play-motion?=	robotpkg

DEPEND_USE+=			play-motion

DEPEND_ABI.play-motion?=\
	play-motion>=0.4.5
DEPEND_DIR.play-motion?=\
	../../wip/play-motion

SYSTEM_SEARCH.play-motion=\
  'include/pal_hardware_interfaces/actuator_temperature_interface.h'	\
  'share/pal_hardware_interfaces/cmake/pal_hardware_interfacesConfig.cmake'	\
  'share/pal_hardware_interfaces/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_hardware_interfaces.pc:/Version/s/[^0-9.]//gp'

endif # PLAY_MOTION_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
