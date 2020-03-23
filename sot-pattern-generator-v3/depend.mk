# robotpkg depend.mk for:	wip/sot-pattern-generator-v3
# Created:			Olivier Stasse on Thu, 18 Apr 2013
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
SOT_PATTERN_GENERATOR_V3_DEPEND_MK:=	${SOT_PATTERN_GENERATOR_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				sot-pattern-generator-v3
endif

ifeq (+,$(SOT_PATTERN_GENERATOR_V3_DEPEND_MK)) # ------------------------------

DEPEND_USE+=				sot-pattern-generator-v3
PREFER.sot-pattern-generator-v3?=	robotpkg

DEPEND_ABI.sot-pattern-generator-v3?=	sot-pattern-generator-v3>=2.10
DEPEND_DIR.sot-pattern-generator-v3?=	../../wip/sot-pattern-generator-v3
SYSTEM_SEARCH.sot-pattern-generator-v3=\
	'include/sot/pattern-generator/config.hh:/SOT_PATTERN_GENERATOR_VERSION /s/[^0-9.]//gp'				\
	'lib/dynamic-graph-plugins/libpg.so'										\
	'lib/cmake/sot-pattern-generator/sot-pattern-generatorConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'lib/pkgconfig/sot-pattern-generator.pc:/Version/s/[^0-9.]//pg'

include ../../mk/sysdep/python.mk

endif # SOT_PATTERN_GENERATOR__v3DEPEND_MK ------------------------------------

DEPEND_DEPTH:=				${DEPEND_DEPTH:+=}
