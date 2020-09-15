# robotpkg depend.mk for:	wip/py27-simple-humanoid-rbprm
# Created:			Guilhem Saurel on Tue, 15 Sep 2020
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SIMPLE_HUMANOID_RBPRM_DEPEND_MK:=	${PY_SIMPLE_HUMANOID_RBPRM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-simple-humanoid-rbprm
endif

ifeq (+,$(PY_SIMPLE_HUMANOID_RBPRM_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-simple-humanoid-rbprm?=		robotpkg

DEPEND_USE+=			py-simple-humanoid-rbprm

DEPEND_ABI.py-simple-humanoid-rbprm?=	${PKGTAG.python-}simple-humanoid-rbprm>=4.10.0
DEPEND_DIR.py-simple-humanoid-rbprm?=	../../wip/py-simple-humanoid-rbprm

SYSTEM_SEARCH.py-simple-humanoid-rbprm=\
	include/hpp/simple-humanoid-rbprm/config.hh				\
	'lib/pkgconfig/simple-humanoid-rbprm.pc:/Version/s/[^0-9.]//gp'		\
	'${PYTHON_SYSLIBSEARCH}/simple_humanoid_rbprm/__init__.py'

endif # PY_SIMPLE_HUMANOID_RBPRM_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
