# robotpkg depend.mk for:	wip/aig
# Created:			Guilhem Saurel on Wed,  6 Apr 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
AIG_DEPEND_MK:=	${AIG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			aig
endif

ifeq (+,$(AIG_DEPEND_MK)) # ------------------------------------------

PREFER.aig?=	robotpkg

SYSTEM_SEARCH.aig=							\
  'include/aig/config.hh:/AIG_VERSION /s/[^0-9.]//gp'			\
  'include/aig/biped_ig.hpp.hpp'					\
  'lib/cmake/aig/aigConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libaig.so'							\
  'lib/pkgconfig/aig.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			aig

DEPEND_ABI.aig?=	aig>=1.0.0
DEPEND_DIR.aig?=	../../wip/aig

endif # AIG_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
