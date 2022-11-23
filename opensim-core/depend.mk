# robotpkg depend.mk for:	simulation/py38-opensim-core
# Created:			Guilhem Saurel on Wed, 23 Nov 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
OPENSIM_CORE_DEPEND_MK:=	${OPENSIM_CORE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			opensim-core
endif

ifeq (+,$(OPENSIM_CORE_DEPEND_MK)) # ------------------------------------------

# TODO: system is available, we just need to install it on the buildfarm
PREFER.opensim-core?=		robotpkg

SYSTEM_SEARCH.opensim-core=\
  'bin/opensim-cmd'							\
  'etc/OpenSim_buildinfo.txt:/Version/s/[^0-9.]//gp'			\
  'include/OpenSim/OpenSim.h'						\
  'lib/cmake/OpenSim/OpenSimConfigVersion.cmake/Version/s/[^0-9.]//gp'	\
  'lib/libosimCommon.so'

DEPEND_USE+=			opensim-core

DEPEND_ABI.opensim-core?=	opensim-core>=4.4
DEPEND_DIR.opensim-core?=	../../wip/opensim-core

endif # OPENSIM_CORE_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
