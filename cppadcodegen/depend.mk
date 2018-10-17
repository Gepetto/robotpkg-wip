# robotpkg depend.mk for:	wip/cppadcodegen
# Created:			Guilhem Saurel on Tue, 17 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
CPPADCODEGEN_DEPEND_MK:=	${CPPADCODEGEN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		cppadcodegen
endif

ifeq (+,$(CPPADCODEGEN_DEPEND_MK)) # ------------------------------------------

PREFER.cppadcodegen?=	robotpkg

SYSTEM_SEARCH.cppadcodegen=\
  'include/cppad/cg.hpp:'	\
  'share/pkgconfig/cppadcg.pc:/Version  /s/[^0-9.]//gp'

DEPEND_USE+=		cppadcodegen

DEPEND_ABI.cppadcodegen?=	cppadcodegen>=20180000.0
DEPEND_DIR.cppadcodegen?=	../../wip/cppadcodegen

endif # CPPADCODEGEN_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
