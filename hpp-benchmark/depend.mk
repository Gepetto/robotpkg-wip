# robotpkg depend.mk for:	wip/hpp-benchmark
# Created:			Guilhem Saurel on Thu, 25 Apr 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_BENCHMARK_DEPEND_MK:=	${HPP_BENCHMARK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-benchmark
endif

ifeq (+,$(HPP_BENCHMARK_DEPEND_MK)) # --------------------------------------

PREFER.hpp-benchmark?=	robotpkg

DEPEND_USE+=		hpp-benchmark

DEPEND_ABI.hpp-benchmark?=	hpp-benchmark>=4.5.0
DEPEND_DIR.hpp-benchmark?=	../../wip/hpp-benchmark

SYSTEM_SEARCH.hpp-benchmark=\
	include/hpp/benchmark/config.hh	\
	'lib/pkgconfig/hpp_benchmark.pc:/Version/s/[^0-9.]//gp'

endif # HPP_BENCHMARK_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
