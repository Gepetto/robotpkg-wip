# robotpkg depend.mk for:	wip/py-hqp
# Created:			Guilhem Saurel on Fri, 19 Apr 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HQP_DEPEND_MK:=	${PY_HQP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hqp
endif

ifeq (+,$(PY_HQP_DEPEND_MK)) # ------------------------------------------

PREFER.py-hqp?=	robotpkg

SYSTEM_SEARCH.py-hqp=\
  '${PYTHON_SYSLIBSEARCH}/hqp/__init__.py'

DEPEND_USE+=			py-hqp

DEPEND_ABI.py-hqp?=		${PKGTAG.python-}hqp>=1.0.1
DEPEND_DIR.py-hqp?=		../../wip/py-hqp

include ../../mk/sysdep/python.mk

endif # PY_HQP_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
