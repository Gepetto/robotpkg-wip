# robotpkg depend.mk for:	wip/ddp-actuator-solver
# Created:		 	Olivier Stasse on Thu, 9 May 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
DDP_ACTUATOR_SOLVER_DEPEND_MK:=	${DDP_ACTUATOR_SOLVER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ddp-actuator-solver
endif

ifeq (+,$(DDP_ACTUATOR_SOLVER_DEPEND_MK)) # ------------------------------------------

PREFER.ddp-actuator-solver?=	robotpkg

SYSTEM_SEARCH.ddp-actuator-solver=\
  'lib/pkgconfig/ddp-actuator-solver.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		ddp-actuator-solver

DEPEND_ABI.ddp-actuator-solver?=	ddp-actuator-solver>=1.0.0
DEPEND_DIR.ddp-actuator-solver?=	../../wip/ddp-actuator-solver

endif # DDP_ACTUATOR_SOLVER_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
