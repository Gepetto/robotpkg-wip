# robotpkg depend.mk for:	wip/py37-talos-rbprm
# Created:			Guilhem Saurel on Wed, 23 Oct 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_TALOS_RBPRM_DEPEND_MK:=	${PY_TALOS_RBPRM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-talos-rbprm
endif

ifeq (+,$(PY_TALOS_RBPRM_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-talos-rbprm?=		robotpkg

DEPEND_USE+=			py-talos-rbprm

DEPEND_ABI.py-talos-rbprm?=	${PKGTAG.python-}talos-rbprm>=4.7.0
DEPEND_DIR.py-talos-rbprm?=	../../wip/py-talos-rbprm

SYSTEM_SEARCH.py-talos-rbprm=\
	include/hpp/talos-rbprm/config.hh	i			\
	'lib/pkgconfig/talos-rbprm.pc:/Version/s/[^0-9.]//gp'		\
	'${PYTHON_SYSLIBSEARCH}/talos_rbprm/__init__.py'

endif # PY_TALOS_RBPRM_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
