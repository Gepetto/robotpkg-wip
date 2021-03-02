# robotpkg depend.mk for:	wip/py39-breathe
# Created:			Guilhem Saurel on Tue,  2 Mar 2021
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_BREATHE_DEPEND_MK:=		${PY_BREATHE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-breathe
endif

ifeq (+,$(PY_BREATHE_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-breathe?=		robotpkg

DEPEND_USE+=			py-breathe

DEPEND_ABI.py-breathe?=		${PKGTAG.python-}breathe>=4.27.0
DEPEND_DIR.py-breathe?=		../../wip/py-breathe

SYSTEM_SEARCH.py-breathe=							\
	'${PYTHON_SYSLIBSEARCH}/breathe/__init__.py:/__version__/s/[^0-9.]//gp'	\
	'bin/breathe-apidoc'

endif # PY_BREATHE_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
