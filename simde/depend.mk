# robotpkg depend.mk for:	wip/simde
# Created:			Guilhem Saurel on Mon, 10 Oct 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
SIMDE_DEPEND_MK:=		${SIMDE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			simde
endif

ifeq (+,$(SIMDE_DEPEND_MK)) # ------------------------------------------

PREFER.simde?=			robotpkg

# '/define SIMDE_VERSION_/s/[^0-9]//gp'
SYSTEM_SEARCH.simde=		\
	'include/simde-common.h'

DEPEND_USE+=			simde

DEPEND_ABI.simde?=		simde>=0.7.2
DEPEND_DIR.simde?=		../../wip/simde

endif # SIMDE_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
