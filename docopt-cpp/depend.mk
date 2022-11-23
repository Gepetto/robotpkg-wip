# robotpkg depend.mk for:	wip/docopt-cpp
# Created:			Guilhem Saurel on Wed, 23 Nov 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
DOCOPT_CPP_DEPEND_MK:=		${DOCOPT_CPP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			docopt-cpp
endif

ifeq (+,$(DOCOPT_CPP_DEPEND_MK)) # ------------------------------------------

PREFER.docopt-cpp?=		robotpkg

SYSTEM_SEARCH.docopt-cpp=							\
  'include/docopt/docopt.h'							\
  'lib/cmake/docopt/docopt-config-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libdocopt.so'

DEPEND_USE+=			docopt-cpp

DEPEND_ABI.docopt-cpp?=		docopt-cpp>=0.6.3
DEPEND_DIR.docopt-cpp?=		../../wip/docopt-cpp

endif # DOCOPT_CPP_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
