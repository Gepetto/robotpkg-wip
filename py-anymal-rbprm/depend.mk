# robotpkg depend.mk for:	wip/py27-anymal-rbprm
# Created:			Guilhem Saurel on Tue, 15 Sep 2020
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_ANYMAL_RBPRM_DEPEND_MK:=	${PY_ANYMAL_RBPRM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-anymal-rbprm
endif

ifeq (+,$(PY_ANYMAL_RBPRM_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-anymal-rbprm?=		robotpkg

DEPEND_USE+=			py-anymal-rbprm

DEPEND_ABI.py-anymal-rbprm?=	${PKGTAG.python-}anymal-rbprm>=4.10.0
DEPEND_DIR.py-anymal-rbprm?=	../../wip/py-anymal-rbprm

SYSTEM_SEARCH.py-anymal-rbprm=\
	include/hpp/anymal-rbprm/config.hh				\
	'lib/pkgconfig/anymal-rbprm.pc:/Version/s/[^0-9.]//gp'		\
	'${PYTHON_SYSLIBSEARCH}/anymal_rbprm/__init__.py'

endif # PY_ANYMAL_RBPRM_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
