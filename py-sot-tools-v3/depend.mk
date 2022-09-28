# robotpkg depend.mk for:	wip/py-sot-tools-v3
# Created:			Olivier Stasse on Mon, 15 Apr 2013
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_SOT_TOOLS_V3_DEPEND_MK:=	${PY_SOT_TOOLS_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-sot-tools-v3
endif

ifeq (+,$(PY_SOT_TOOLS_V3_DEPEND_MK)) # -----------------------------------

PREFER.py-sot-tools-v3?=	robotpkg

DEPEND_USE+=			py-sot-tools-v3
DEPEND_ABI.py-sot-tools-v3?=	${PKGTAG.python-}sot-tools-v3>=2.0
DEPEND_DIR.py-sot-tools-v3?=	../../wip/py-sot-tools-v3

SYSTEM_SEARCH.py-sot-tools-v3=\
	include/sot/tools/config.hh				\
	'lib/pkgconfig/sot-tools.pc:/Version/s/[^0-9.]//gp'	\
	'${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/tools/wrap.so'

include ../../mk/sysdep/python.mk

endif # PY_SOT_TOOLS_DEPEND_MK -----------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
