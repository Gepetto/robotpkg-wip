# robotpkg depend.mk for:	wip/py-hpp-rbprm
# Created:			Guilhem Saurel on Wed, 30 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_RBPRM_DEPEND_MK:=	${PY_HPP_RBPRM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-rbprm
endif

ifeq (+,$(PY_HPP_RBPRM_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-rbprm?=	robotpkg

DEPEND_USE+=		py-hpp-rbprm

DEPEND_ABI.py-hpp-rbprm?=	${PKGTAG.python-}hpp-rbprm>=4.7.0
DEPEND_DIR.py-hpp-rbprm?=	../../wip/py-hpp-rbprm

SYSTEM_SEARCH.py-hpp-rbprm=\
	include/hpp/rbprm/config.hh	\
	lib/libhpp-rbprm.so \
	'lib/pkgconfig/hpp-rbprm.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_RBPRM_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
