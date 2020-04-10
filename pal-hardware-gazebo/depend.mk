# robotpkg depend.mk for:	wip/pal-hardware-gazebo
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
PAL_HARDWARE_GAZEBO_DEPEND_MK:=		${PAL_HARDWARE_GAZEBO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				pal-hardware-gazebo
endif

ifeq (+,$(PAL_HARDWARE_GAZEBO_DEPEND_MK)) # ---------------------------------

include ../../mk/robotpkg.prefs.mk  # for OS_VERSION

PREFER.pal-hardware-gazebo?=		robotpkg

DEPEND_USE+=				pal-hardware-gazebo
ifneq (,$(filter 16.04%,${OS_VERSION}))
  DEPEND_ABI.pal-hardware-gazebo?=	pal-hardware-gazebo>=0.0.9<1.0.0
else
  DEPEND_ABI.pal-hardware-gazebo?=	pal-hardware-gazebo>=1.0.0
endif

DEPEND_DIR.pal-hardware-gazebo?=	../../wip/pal-hardware-gazebo

SYSTEM_SEARCH.pal-hardware-gazebo=					\
  'include/pal_hardware_gazebo/pal_hardware_gazebo.h'			\
  'share/pal_hardware_gazebo/cmake/pal_hardware_gazeboConfig.cmake'	\
  'share/pal_hardware_gazebo/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_hardware_gazebo.pc:/Version/s/[^0-9.]//gp'

endif # PAL_HARDWARE_GAZEBO_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
