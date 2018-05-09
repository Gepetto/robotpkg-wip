# robotpkg depend.mk for:	wip/pmb2-simulation
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PMB2_SIMULATION_DEPEND_MK:=	${PMB2_SIMULATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pmb2-simulation
endif

ifeq (+,$(PMB2_SIMULATION_DEPEND_MK)) # ----------------------------------

PREFER.pmb2-simulation?=	robotpkg

DEPEND_USE+=			pmb2-simulation

DEPEND_ABI.pmb2-simulation?=	pmb2-simulation>=1.1.8
DEPEND_DIR.pmb2-simulation?=	../../wip/pmb2-simulation

SYSTEM_SEARCH.pmb2-simulation=\
  'share/pmb2_simulation/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pmb2_simulation.pc:/Version/s/[^0-9.]//gp'  \
  'share/pmb2_simulation/cmake/pmb2_simulationConfig.cmake'

endif # PMB2_SIMULATION_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
