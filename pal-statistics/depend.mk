# robotpkg depend.mk for:	wip/pal-statistics
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_STATISTICS_DEPEND_MK:=	${PAL_STATISTICS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-statistics
endif

ifeq (+,$(PAL_STATISTICS_DEPEND_MK)) # ---------------------------------

PREFER.pal-statistics?=	robotpkg

DEPEND_USE+=			pal-statistics

DEPEND_ABI.pal-statistics?=\
	pal-statistics>=1.1.0
DEPEND_DIR.pal-statistics?=\
	../../wip/pal-statistics

SYSTEM_SEARCH.pal-statistics=\
  'include/pal_statistics/pal_statistics.h'	\
  'share/pal_statistics/cmake/pal_statisticsConfig.cmake' \
  'share/pal_statistics/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_statistics.pc:/Version/s/[^0-9.]//gp'

endif # PAL_STATISTICS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
