# robotpkg depend.mk for:	wip/timeoptimization
# Created:			Guilhem Saurel on Wed, 23 Oct 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TIMEOPTIMIZATION_DEPEND_MK:=	${TIMEOPTIMIZATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			timeoptimization
endif

ifeq (+,$(TIMEOPTIMIZATION_DEPEND_MK)) # --------------------------------------


PREFER.timeoptimization?=		robotpkg

DEPEND_USE+=			timeoptimization

DEPEND_ABI.timeoptimization?=	timeoptimization>=1.1.0
DEPEND_DIR.timeoptimization?=	../../wip/timeoptimization

SYSTEM_SEARCH.timeoptimization=\
	include/timeoptimization/solver/interface/Cone.hpp			\
	'lib/pkgconfig/timeoptimization-solver.pc:/Version/s/[^0-9.]//gp'	\
	lib/libtimeoptimization-solver.so

endif # TIMEOPTIMIZATION_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
