# robotpkg depend.mk for:	wip/py-sot-pattern-generator-v3
# Created:			Olivier Stasse on Thu, 18 Apr 2013
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
PY_SOT_PATTERN_GENERATOR_V3_DEPEND_MK:=	${PY_SOT_PATTERN_GENERATOR_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-sot-pattern-generator-v3
endif

ifeq (+,$(PY_SOT_PATTERN_GENERATOR_V3_DEPEND_MK)) # ------------------------------

DEPEND_USE+=			py-sot-pattern-generator-v3
PREFER.py-sot-pattern-generator-v3?=	robotpkg

DEPEND_ABI.py-sot-pattern-generator-v3?=	${PKGTAG.python-}sot-pattern-generator-v3>=2.10
DEPEND_DIR.py-sot-pattern-generator-v3?=	../../wip/py-sot-pattern-generator-v3

SYSTEM_SEARCH.sot-pattern-generator-v3=\
	'${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/pattern_generator/pg/wrap.so'

include ../../mk/sysdep/python.mk

endif # PY_SOT_PATTERN_GENERATOR__v3DEPEND_MK ------------------------------------

DEPEND_DEPTH:=				${DEPEND_DEPTH:+=}
