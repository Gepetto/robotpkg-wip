# robotpkg depend.mk for:	wip/qualisys-cpp-sdk
# Created:			Guilhem Saurel on Tue,  5 Jul 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
QUALISYS_CPP_SDK_DEPEND_MK:=	${QUALISYS_CPP_SDK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			qualisys-cpp-sdk
endif

ifeq (+,$(QUALISYS_CPP_SDK_DEPEND_MK)) # ------------------------

PREFER.qualisys-cpp-sdk?=	robotpkg

SYSTEM_SEARCH.qualisys-cpp-sdk=				\
  'include/qualisys_cpp_sdk/RTPacket.h'			\
  'lib/libqualisys_cpp_sdk.a'				\
  'lib/qualisys_cpp_sdk/qualisys_cpp_sdkConfig.cmake'

DEPEND_USE+=			qualisys-cpp-sdk

DEPEND_DIR.qualisys-cpp-sdk?=	../../wip/qualisys-cpp-sdk

endif # QUALISYS_CPP_SDK_DEPEND_MK ------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
