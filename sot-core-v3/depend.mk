# robotpkg depend.mk for:	wip/sot-core-v3
# Created:			Rohan Budhiraja on Thu, 17 Dec 2015
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
SOT_CORE_V3_DEPEND_MK:=		${SOT_CORE_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			sot-core-v3
endif

ifeq (+,$(SOT_CORE_V3_DEPEND_MK)) # -------------------------------------------

PREFER.sot-core-v3?=		robotpkg

DEPEND_USE+=		sot-core-v3

DEPEND_ABI.sot-core-v3?=	sot-core-v3>=4.1.0<5.0.0
DEPEND_DIR.sot-core-v3?=	../../wip/sot-core-v3

SYSTEM_SEARCH.sot-core-v3=								\
	'include/sot/core/config.hh:/SOT_CORE_VERSION /s/[^0-9.]//gp'			\
	'lib/cmake/sot-core/sot-coreConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'lib/libsot-core.so'								\
	'lib/pkgconfig/sot-core.pc:/Version/s/[^0-9.]//gp'				\
	'share/sot-core/package.xml:/<version>/s/[^0-9.]//gp'



endif # SOT_CORE_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
