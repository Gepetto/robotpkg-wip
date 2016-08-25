# robotpkg depend.mk for:	simulation/openhrp3-simulator-wo-rtm
# Created:			Olivier Stasse on Thu, 25 Aug 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OPENHRP3_SIMULATOR_WO_RTM_DEPEND_MK:=	${OPENHRP3_SIMULATOR_WO_RTM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		openhrp3-simulator-wo-rtm
endif

ifeq (+,$(OPENHRP3_SIMULATOR_WO_RTM_DEPEND_MK)) # ------------------------------------------

PREFER.openhrp3_simulator_wo_rtm?=	robotpkg

SYSTEM_SEARCH.openhrp3_simulator_wo_rtm=\
  'lib/pkgconfig/openhrp3-simulator-wo-rtm.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		openhrp3-simulator-wo-rtm

DEPEND_ABI.openhrp3-simulator-wo-rtm?=	openhrp3-simulator-wo-rtm>=1.0.0
DEPEND_DIR.openhrp3-simulator-wo-rtm?=	../../wip/openhrp3-simulator-wo-rtm

endif # OPENHRP3_SIMULATOR_WO_RTM_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
