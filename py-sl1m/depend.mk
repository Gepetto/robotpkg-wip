# robotpkg depend.mk for:	wip/py38-sl1m
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_SL1M_DEPEND_MK:=		${PY_SL1M_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-sl1m
endif

ifeq (+,$(PY_SL1M_DEPEND_MK)) # ----------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-sl1m?=		robotpkg

DEPEND_USE+=			py-sl1m

DEPEND_ABI.py-sl1m?=		${PKGTAG.python-}sl1m>=0.1.0
DEPEND_DIR.py-sl1m?=		../../wip/py-sl1m

SYSTEM_SEARCH.py-sl1m=								\
  '${PYTHON_SYSLIBSEARCH}/sl1m/__init__.py'					\
  'lib/cmake/sl1m/sl1mConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

endif # PY_SL1M_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
