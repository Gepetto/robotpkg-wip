# robotpkg depend.mk for:	wip/hpp-plot
# Created:			Guilhem Saurel on Tue, 26 Feb 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_PLOT_DEPEND_MK:=	${HPP_PLOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-plot
endif

ifeq (+,$(HPP_PLOT_DEPEND_MK)) # --------------------------------------

PREFER.hpp-plot?=	robotpkg

DEPEND_USE+=		hpp-plot

DEPEND_ABI.hpp-plot?=	hpp-plot>=4.3.0
DEPEND_DIR.hpp-plot?=	../../wip/hpp-plot

SYSTEM_SEARCH.hpp-plot=\
	include/hpp/plot/config.hh	\
	lib/libhpp-plot.so	\
	'lib/pkgconfig/hpp-plot.pc:/Version/s/[^0-9.]//gp'

endif # HPP_PLOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
