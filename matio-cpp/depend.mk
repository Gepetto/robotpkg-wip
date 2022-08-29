# robotpkg depend.mk for:	math/matio-cpp
# Created:			Guilhem Saurel on Mon, 29 Aug 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MATIO_CPP_DEPEND_MK:=		${MATIO_CPP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			matio-cpp
endif

ifeq (+,$(MATIO_CPP_DEPEND_MK)) # ------------------------------------------

PREFER.matio-cpp?=		system

SYSTEM_SEARCH.matio-cpp=\
  'include/matioCpp/Config.h:/MATIOCPP_VER /s/[^0-9.]//gp'				\
  'lib/cmake/matioCpp/matioCppConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libmatioCpp.so'

DEPEND_USE+=			matio-cpp

DEPEND_ABI.matio-cpp?=		matio-cpp>=0.2.0
DEPEND_DIR.matio-cpp?=		../../wip/matio-cpp

SYSTEM_PKG.Arch.matio-cpp=	libmatio-cpp

endif # MATIO_CPP_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
