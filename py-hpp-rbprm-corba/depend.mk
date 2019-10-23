# robotpkg depend.mk for:	wip/py37-hpp-rbprm-corba
# Created:			Guilhem Saurel on Wed, 30 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_RBPRM_CORBA_DEPEND_MK:=	${PY_HPP_RBPRM_CORBA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-rbprm-corba
endif

ifeq (+,$(PY_HPP_RBPRM_CORBA_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-rbprm-corba?=	robotpkg

DEPEND_USE+=			py-hpp-rbprm-corba

DEPEND_ABI.py-hpp-rbprm-corba?=	${PKGTAG.python-}hpp-rbprm-corba>=4.7.1
DEPEND_DIR.py-hpp-rbprm-corba?=	../../wip/py-hpp-rbprm-corba

SYSTEM_SEARCH.py-hpp-rbprm-corba=\
	include/hpp/corbaserver/rbprm/config.hh				\
	lib/hppPlugins/rbprm-corba.so					\
	'lib/pkgconfig/hpp-rbprm-corba.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_RBPRM_CORBA_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
