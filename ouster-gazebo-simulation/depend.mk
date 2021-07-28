# robotpkg depend.mk for:		wip/ouster-gazebo-simulation
# Created:				Guilhem Saurel on Thu, 20 Feb 2020
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
OUSTER_GAZEBO_SIMULATION_DEPEND_MK:=	${OUSTER_GAZEBO_SIMULATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				ouster-gazebo-simulation
endif

ifeq (+,$(OUSTER_GAZEBO_SIMULATION_DEPEND_MK)) # -----------------------------------------

PREFER.ouster-gazebo-simulation?=	robotpkg

DEPEND_USE+=				ouster-gazebo-simulation
DEPEND_ABI.ouster-gazebo-simulation?=	ouster-gazebo-simulation>=2.1.0
DEPEND_DIR.ouster-gazebo-simulation?=	../../wip/ouster-gazebo-simulation

SYSTEM_SEARCH.ouster-gazebo-simulation=\
  'include/ouster/gazebo/simulation/config.hpp:/OUSTER_GAZEBO_SIMULATION_VERSION /s/[^0-9.]//gp'		\
  'share/ouster_os1_64/package.xml:/<version>/s/[^0-9.]//gp'							\
  'share/ouster_gazebo_plugins/cmake/ouster_gazebo_pluginsConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

endif # OUSTER_GAZEBO_SIMULATION_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=					${DEPEND_DEPTH:+=}
