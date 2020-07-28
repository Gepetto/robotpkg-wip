# robotpkg depend.mk for:	wip/example-adder
# Created:			Guilhem Saurel on Tue, 10 Jul 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
EXAMPLE_ADDER_DEPEND_MK:=	${EXAMPLE_ADDER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			example-adder
endif

ifeq (+,$(EXAMPLE_ADDER_DEPEND_MK)) # ------------------------------------------

PREFER.example-adder?=		robotpkg

SYSTEM_SEARCH.example-adder=									\
  'include/example/adder/config.hh:/EXAMPLE_ADDER_VERSION /s/[^0-9.]//gp'			\
  'lib/cmake/example-adder/example-adderConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libexample-adder.so'									\
  'lib/pkgconfig/example-adder.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			example-adder

DEPEND_ABI.example-adder?=	example-adder>=3.0.0
DEPEND_DIR.example-adder?=	../../wip/example-adder

endif # EXAMPLE_ADDER_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
