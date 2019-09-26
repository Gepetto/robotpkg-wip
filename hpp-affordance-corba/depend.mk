# robotpkg depend.mk for:	wip/hpp-affordance-corba-corba
# Created:			Guilhem Saurel on Fri, 4 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_AFFORDANCE_CORBA_DEPEND_MK:=	${HPP_AFFORDANCE_CORBA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-affordance-corba
endif

ifeq (+,$(HPP_AFFORDANCE_CORBA_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.hpp-affordance-corba?=	robotpkg

DEPEND_USE+=		hpp-affordance-corba

DEPEND_ABI.hpp-affordance-corba?=	${PKGTAG.python-}hpp-affordance-corba>=4.7.0
DEPEND_DIR.hpp-affordance-corba?=	../../wip/hpp-affordance-corba

SYSTEM_SEARCH.hpp-affordance-corba=\
	include/hpp/corbaserver/affordance/config.hh			\
	lib/hppPlugins/affordance-corba.so				\
	'lib/pkgconfig/hpp-affordance-corba.pc:/Version/s/[^0-9.]//gp'

endif # HPP_AFFORDANCE_CORBA_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
