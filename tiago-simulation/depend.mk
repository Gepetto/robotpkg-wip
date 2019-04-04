# robotpkg depend.mk for:	wip/tiago-simulation
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TIAGO_SIMULATION_DEPEND_MK:=	${TIAGO_SIMULATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tiago-simulation
endif

ifeq (+,$(TIAGO_SIMULATION_DEPEND_MK)) # ----------------------------------

PREFER.tiago-simulation?=	robotpkg

DEPEND_USE+=			tiago-simulation

DEPEND_ABI.tiago-simulation?=	tiago-simulation>=2.0.6
DEPEND_DIR.tiago-simulation?=	../../wip/tiago-simulation

SYSTEM_SEARCH.tiago-simulation=\
  'share/tiago_simulation/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tiago_simulation.pc:/Version/s/[^0-9.]//gp'  \
  'share/tiago_simulation/cmake/tiago_simulationConfig.cmake'

endif # TIAGO_SIMULATION_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
