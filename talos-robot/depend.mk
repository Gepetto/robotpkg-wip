# robotpkg depend.mk for:	wip/talos-robot
# Created:			Olivier Stasse on Thu, 4 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_ROBOT_DEPEND_MK:=	${TALOS_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-robot
endif

ifeq (+,$(TALOS_ROBOT_DEPEND_MK)) # ----------------------------------

PREFER.talos-robot?=	robotpkg

DEPEND_USE+=			talos-robot

DEPEND_ABI.talos-robot?=	talos-robot>=0.0.14
DEPEND_DIR.talos-robot?=	../../wip/talos-robot

SYSTEM_SEARCH.talos-robot=\
  'share/talos_bringup/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_bringup.pc:/Version/s/[^0-9.]//gp'	\
  'share/talos_description/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_description.pc:/Version/s/[^0-9.]//gp'	\
  'share/talos_controller_configuration/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_controller_configuration.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_ROBOT_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
