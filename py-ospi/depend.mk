# robotpkg depend.mk for:	wip/py-ospi
# Created:			Guilhem Saurel on Thu, 25 Apr 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_OSPI_DEPEND_MK:=	${PY_OSPI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-ospi
endif

ifeq (+,$(PY_OSPI_DEPEND_MK)) # ------------------------------------------

PREFER.py-ospi?=	robotpkg

SYSTEM_SEARCH.py-ospi=\
  '${PYTHON_SYSLIBSEARCH}/ospi/__init__.py'

DEPEND_USE+=			py-ospi

DEPEND_ABI.py-ospi?=		${PKGTAG.python-}ospi>=1.0.1
DEPEND_DIR.py-ospi?=		../../wip/py-ospi

include ../../mk/sysdep/python.mk

endif # PY_OSPI_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
