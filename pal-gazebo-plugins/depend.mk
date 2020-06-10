# robotpkg depend.mk for:	wip/pal-gazebo-plugins
# Created:			Olivier Stasse on Mer, 3 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_GAZEBO_PLUGINS_DEPEND_MK:=${PAL_GAZEBO_PLUGINS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-gazebo-plugins
endif

ifeq (+,$(PAL_GAZEBO_PLUGINS_DEPEND_MK)) # ---------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.pal-gazebo-plugins?=		${PREFER.pal}
SYSTEM_PREFIX.pal-gazebo-plugins?=	${SYSTEM_PREFIX.pal}

DEPEND_USE+=			pal-gazebo-plugins
ifneq (,$(filter 16.04%,${OS_VERSION}))
  DEPEND_ABI.pal-gazebo-plugins?=	pal-gazebo-plugins>=1.1.4<2.0.0
else
  DEPEND_ABI.pal-gazebo-plugins?=	pal-gazebo-plugins>=2.0.0
endif

DEPEND_DIR.pal-gazebo-plugins?=	../../wip/pal-gazebo-plugins

SYSTEM_SEARCH.pal-gazebo-plugins=					\
  'share/pal_gazebo_plugins/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_gazebo_plugins.pc:/Version/s/[^0-9.]//gp'

endif # PAL_GAZEBO_PLUGINS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
