# robotpkg depend.mk for:	wip/py-sot-torque-control
# Created:			Guilhem Saurel on Fri, 27 Jul 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOT_TORQUE_CONTROL_DEPEND_MK:=	${PY_SOT_TORQUE_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-sot-torque-control
endif

ifeq (+,$(PY_SOT_TORQUE_CONTROL_DEPEND_MK)) # -------------------------------------------

PREFER.py-sot-torque-control?=	robotpkg

SYSTEM_SEARCH.py-sot-torque-control=\
  '${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/torque_control/inverse_dynamics_balance_controller/wrap.so' \
  '${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/torque_control/__init__.py'

DEPEND_USE+=		py-sot-torque-control

DEPEND_ABI.py-sot-torque-control?=	${PKGTAG.python-}sot-torque-control>=1.0.0
DEPEND_DIR.py-sot-torque-control?=	../../wip/py-sot-torque-control

endif # PY_SOT_TORQUE_CONTROL_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
