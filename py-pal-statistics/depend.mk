# robotpkg depend.mk for:	wip/py-pal-statistics
# Created:			Guilhem Saurel on Mon, 23 Mar 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_PAL_STATISTICS_DEPEND_MK:=	${PY_PAL_STATISTICS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-pal-statistics
endif

ifeq (+,$(PY_PAL_STATISTICS_DEPEND_MK)) # ---------------------------------

PREFER.py-pal-statistics?=	robotpkg

DEPEND_USE+=			py-pal-statistics

DEPEND_ABI.py-pal-statistics?=	${PKGTAG.python-}pal-statistics>=1.1.0
DEPEND_DIR.py-pal-statistics?=	../../wip/py-pal-statistics

SYSTEM_SEARCH.py-pal-statistics=\
  'include/pal_statistics/pal_statistics.h'			\
  'share/pal_statistics/cmake/pal_statisticsConfig.cmake'	\
  'share/pal_statistics/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_statistics.pc:/Version/s/[^0-9.]//gp'	\
  '${PYTHON_SYSLIBSEARCH}/pal_statistics/__init__.py'

include ../../mk/sysdep/python.mk

endif # PY_PAL_STATISTICS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
