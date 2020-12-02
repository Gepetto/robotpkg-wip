# robotpkg depend.mk for:	optimization/osqp
# Created:			Guilhem Saurel on Wed,  2 Dec 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
OSQP_DEPEND_MK:=		${OSQP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			osqp
endif

ifeq (+,$(OSQP_DEPEND_MK)) # ------------------------------------------

PREFER.osqp?=			robotpkg

SYSTEM_SEARCH.osqp=						\
  'include/osqp/constants.h:/OSQP_VERSION /s/[^0-9.]//gp'	\
  'lib/cmake/osqp/osqp-config.cmake'				\
  'lib/libosqp.so'

DEPEND_USE+=			osqp

DEPEND_ABI.osqp?=		osqp>=0.6.0
DEPEND_DIR.osqp?=		../../wip/osqp

endif # OSQP_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
