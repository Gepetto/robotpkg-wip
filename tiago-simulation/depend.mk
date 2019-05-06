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
  'lib/pkgconfig/tiago_2dnav_gazebo.pc:/Version/s/[^0-9.]//gp'  \
  'lib/pkgconfig/tiago_controller_configuration_gazebo.pc:/Version/s/[^0-9.]//gp'  \
  'lib/pkgconfig/tiago_gazebo.pc:/Version/s/[^0-9.]//gp'  \
  'lib/pkgconfig/tiago_multi.pc:/Version/s/[^0-9.]//gp'  \
  'share/tiago_2dnav_gazebo/cmake/tiago_2dnav_gazeboConfig.cmake' \
  'share/tiago_controller_configuration_gazebo/cmake/tiago_controller_configuration_gazeboConfig.cmake' \
  'share/tiago_gazebo/cmake/tiago_gazeboConfig.cmake' \
  'share/tiago_multi/cmake/tiago_multiConfig.cmake'

endif # TIAGO_SIMULATION_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
