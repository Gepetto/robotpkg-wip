# robotpkg depend.mk for:	wip/py-sot-talos-balance
# Created:			Olivier Stasse on Tue, 14 May 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOT_TALOS_BALANCE_DEPEND_MK:=	${PY_SOT_TALOS_BALANCE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-sot-talos-balance
endif

ifeq (+,$(PY_SOT_TALOS_BALANCE_DEPEND_MK)) # -------------------------------------------

PREFER.py-sot-talos-balance?=	robotpkg

SYSTEM_SEARCH.py-sot-talos-balance=\
  '${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot_talos_balance/__init__.py'

DEPEND_USE+=		py-sot-talos-balance

DEPEND_ABI.py-sot-talos-balance?=	${PKGTAG.python-}sot-talos-balance>=2.0.0
DEPEND_DIR.py-sot-talos-balance?=	../../wip/py-sot-talos-balance

endif # SOT_CORE_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
