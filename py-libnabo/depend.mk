# robotpkg depend.mk for:	wip/py36-libnabo
# Created:			Guilhem Saurel on Fri, 17 Jan 2020
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_LIBNABO_DEPEND_MK:=	${PY_LIBNABO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-libnabo
endif

ifeq (+,$(PY_LIBNABO_DEPEND_MK)) # --------------------------------------

PREFER.py-libnabo?=	robotpkg

DEPEND_USE+=		py-libnabo

DEPEND_ABI.py-libnabo?=	${PKGTAG.python-}libnabo>=1.0.7
DEPEND_DIR.py-libnabo?=	../../wip/py-libnabo

SYSTEM_SEARCH.py-libnabo=\
  '${PYTHON_SYSLIBSEARCH}/pynabo.so'

include ../../mk/sysdep/python.mk

endif # PY_LIBNABO_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
