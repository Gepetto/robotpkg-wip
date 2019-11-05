# robotpkg depend.mk for:	wip/py-hpp-affordance-corba-corba
# Created:			Guilhem Saurel on Fri, 4 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_AFFORDANCE_CORBA_DEPEND_MK:=	${PY_HPP_AFFORDANCE_CORBA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-affordance-corba
endif

ifeq (+,$(PY_HPP_AFFORDANCE_CORBA_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-affordance-corba?=	robotpkg

DEPEND_USE+=		py-hpp-affordance-corba

DEPEND_ABI.py-hpp-affordance-corba?=	${PKGTAG.python-}hpp-affordance-corba>=4.7.0
DEPEND_DIR.py-hpp-affordance-corba?=	../../wip/py-hpp-affordance-corba

SYSTEM_SEARCH.py-hpp-affordance-corba=\
	include/hpp/corbaserver/affordance/config.hh			\
	lib/hppPlugins/affordance-corba.so				\
	'lib/pkgconfig/hpp-affordance-corba.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_AFFORDANCE_CORBA_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
