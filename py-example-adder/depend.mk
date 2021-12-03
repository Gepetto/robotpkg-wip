# robotpkg depend.mk for:	wip/py-example-adder
# Created:			Guilhem Saurel on Tue, 10 Jul 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_EXAMPLE_ADDER_DEPEND_MK:=	${PY_EXAMPLE_ADDER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-example-adder
endif

ifeq (+,$(EXAMPLE_ADDER_DEPEND_MK)) # ------------------------------------------

PREFER.py-example-adder?=	robotpkg

SYSTEM_SEARCH.py-example-adder=									\
  'include/example/adder/config.hh:/EXAMPLE_ADDER_VERSION /s/[^0-9.]//gp'			\
  'include/example-adder/gepadd.hpp'								\
  'lib/cmake/example-adder/example-adderConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libexample-adder.so'									\
  'lib/pkgconfig/example-adder.pc:/Version/s/[^0-9.]//gp'					\
  '${PYTHON_SYSLIBSEARCH}/example_adder/libexample-adder.so'					\
  '${PYTHON_SYSLIBSEARCH}/example_adder/__init__.py'

DEPEND_USE+=			py-example-adder

DEPEND_ABI.py-example-adder?=	${PKGTAG.python-}example-adder>=4.0.0
DEPEND_DIR.py-example-adder?=	../../wip/py-example-adder

endif # PY_EXAMPLE_ADDER_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
