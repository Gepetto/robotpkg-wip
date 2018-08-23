# robotpkg depend.mk for:	wip/py-sot-dyninv-v3
# Created:			Rohan Budhiraja on Thu, 08 Sep 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOT_DYNINV_V3_DEPEND_MK:=	${PY_SOT_DYNINV_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-sot-dyninv-v3
endif

ifeq (+,$(PY_SOT_DYNINV_V3_DEPEND_MK)) # -------------------------------------------

PREFER.py-sot-dyninv-v3?=	robotpkg

SYSTEM_SEARCH.py-sot-dyninv-v3=\
	'${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/dyninv/contact_selecter/wrap.so'

DEPEND_USE+=		py-sot-dyninv-v3

DEPEND_ABI.py-sot-dyninv-v3?=	${PKGTAG.python-}sot-dyninv-v3>=3.0.0
DEPEND_DIR.py-sot-dyninv-v3?=	../../wip/py-sot-dyninv-v3

endif # PY_SOT_DYNINV_V3_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
