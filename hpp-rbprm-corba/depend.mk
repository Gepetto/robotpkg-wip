# robotpkg depend.mk for:	wip/hpp-rbprm-corba
# Created:			Guilhem Saurel on Wed, 30 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_RBPRM_CORBA_DEPEND_MK:=	${HPP_RBPRM_CORBA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-rbprm-corba
endif

ifeq (+,$(HPP_RBPRM_DEPEND_MK)) # --------------------------------------

PREFER.hpp-rbprm-corba?=	robotpkg

DEPEND_USE+=		hpp-rbprm-corba

DEPEND_ABI.hpp-rbprm-corba?=	hpp-rbprm-corba>=4.6.0
DEPEND_DIR.hpp-rbprm-corba?=	../../wip/hpp-rbprm-corba

SYSTEM_SEARCH.hpp-rbprm-corba=\
	include/hpp/corbaserver/rbprm/config.hh	\
	lib/libhpp-rbprm-corba.so	\
	'lib/pkgconfig/hpp-rbprm-corba.pc:/Version/s/[^0-9.]//gp'

endif # HPP_RBPRM_CORBA_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
