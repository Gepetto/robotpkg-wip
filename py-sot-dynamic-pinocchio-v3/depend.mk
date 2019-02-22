# robotpkg Makefile for:	wip/py-sot-dynamic-pinocchio-v3
# Created:			Rohan Budhiraja on Fri, 8 Apr 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOT_DYNAMIC_PINOCCHIO_V3_DEPEND_MK:=	${PY_SOT_DYNAMIC_PINOCCHIO_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-sot-dynamic-pinocchio-v3
endif

ifeq (+,$(PY_SOT_DYNAMIC_PINOCCHIO_V3_DEPEND_MK)) # --------------------------------------

PREFER.py-sot-dynamic-pinocchio-v3?=	robotpkg

SYSTEM_SEARCH.py-sot-dynamic-pinocchio-v3=\
	'${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/dynamics_pinocchio/dynamic/wrap.so'

DEPEND_USE+=		py-sot-dynamic-pinocchio-v3

DEPEND_ABI.py-sot-dynamic-pinocchio-v3?=	${PKGTAG.python-}sot-dynamic-pinocchio-v3>=3.2.0<4.0.0
DEPEND_DIR.py-sot-dynamic-pinocchio-v3?=	../../wip/py-sot-dynamic-pinocchio-v3

endif # PY_SOT_DYNAMIC_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
