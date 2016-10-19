# robotpkg depend.mk for:	motion/sot-pattern-generator
# Created:			Olivier Stasse on Thu, 18 Apr 2013
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
SOT_PATTERN_GENERATOR_V3_DEPEND_MK:=	${SOT_PATTERN_GENERATOR_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			sot-pattern-generator-v3
endif

ifeq (+,$(SOT_PATTERN_GENERATOR_V3_DEPEND_MK)) # ------------------------------

DEPEND_USE+=			sot-pattern-generator-v3
PREFER.sot-pattern-generator-v3?=	robotpkg

DEPEND_ABI.sot-pattern-generator-v3?=	sot-pattern-generator-v3>=3.0
DEPEND_DIR.sot-pattern-generator-v3?=	../../wip/sot-pattern-generator-v3
SYSTEM_SEARCH.sot-pattern-generator-v3=\
	include/sot-pattern-generator/pg.h				\
	lib/plugin/pg.so						\
	'lib/pkgconfig/sot-pattern-generator.pc:/Version/s/[^0-9.]//pg'	\
	'${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/pattern_generator/__init__.py'

include ../../mk/sysdep/python.mk

endif # SOT_PATTERN_GENERATOR__v3DEPEND_MK ------------------------------------

DEPEND_DEPTH:=				${DEPEND_DEPTH:+=}
