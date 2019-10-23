# robotpkg depend.mk for:	wip/py37-solo-pybullet
# Created:			Guilhem Saurel on Thu, 17 Oct 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOLO_PYBULLET_DEPEND_MK:=	${PY_SOLO_PYBULLET_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-solo-pybullet
endif

ifeq (+,$(PY_SOLO_PYBULLET_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-solo-pybullet?=	robotpkg

DEPEND_USE+=			py-solo-pybullet

DEPEND_ABI.py-solo-pybullet?=	${PKGTAG.python-}solo-pybullet>=0.1.0
DEPEND_DIR.py-solo-pybullet?=	../../wip/py-solo-pybullet

SYSTEM_SEARCH.py-solo-pybullet=\
	'${PYTHON_SYSLIBSEARCH}/solo_pybullet/__init__.py'

endif # PY_SOLO_PYBULLET_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
