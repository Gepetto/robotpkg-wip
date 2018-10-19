# robotpkg depend.mk for:	wip/hpp-environments
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPPENVIRONMENTS_DEPEND_MK:=	${HPPENVIRONMENTS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-environments
endif

ifeq (+,$(HPPENVIRONMENTS_DEPEND_MK)) # --------------------------------------

PREFER.hpp-environments?=	robotpkg

DEPEND_USE+=		hpp-environments

DEPEND_ABI.hpp-environments?=	hpp-environments>=4.2.0
DEPEND_DIR.hpp-environments?=	../../wip/hpp-environments

SYSTEM_SEARCH.hpp-environments=\
	include/hpp/environments/config.hh	\
	'lib/pkgconfig/hpp-environments.pc:/Version/s/[^0-9.]//gp'

endif # HPPENVIRONMENTS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
