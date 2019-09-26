# robotpkg depend.mk for:	wip/hpp-rbprm
# Created:			Guilhem Saurel on Wed, 30 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_RBPRM_DEPEND_MK:=	${HPP_RBPRM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-rbprm
endif

ifeq (+,$(HPP_RBPRM_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.hpp-rbprm?=	robotpkg

DEPEND_USE+=		hpp-rbprm

DEPEND_ABI.hpp-rbprm?=	${PKGTAG.python-}hpp-rbprm>=4.7.0
DEPEND_DIR.hpp-rbprm?=	../../wip/hpp-rbprm

SYSTEM_SEARCH.hpp-rbprm=\
	include/hpp/rbprm/config.hh	\
	lib/libhpp-rbprm.so \
	'lib/pkgconfig/hpp-rbprm.pc:/Version/s/[^0-9.]//gp'

endif # HPP_RBPRM_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
