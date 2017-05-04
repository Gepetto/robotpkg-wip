# robotpkg depend.mk for:	wip/talos-simulation
# Created:			Olivier Stasse on Thu, 4 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_SIMULATION_DEPEND_MK:=	${TALOS_SIMULATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-simulation
endif

ifeq (+,$(TALOS_SIMULATION_DEPEND_MK)) # ----------------------------------

PREFER.talos-simulation?=	robotpkg

DEPEND_USE+=			talos-simulation

DEPEND_ABI.talos-simulation?=	talos-simulation>=0.0.13
DEPEND_DIR.talos-simulation?=	../../wip/talos-simulation

SYSTEM_SEARCH.talos-simulation=\
  'share/talos_gazebo/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_gazebo.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_SIMULATION_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
