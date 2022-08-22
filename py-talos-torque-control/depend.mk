# robotpkg depend.mk for:	wip/py38-talos-torque-control
# Created:			Guilhem Saurel on Wed, 25 Mar 2020
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
PY_TALOS_TORQUE_CONTROL_DEPEND_MK:=	${PY_TALOS_TORQUE_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				py-talos-torque-control
endif

ifeq (+,$(PY_TALOS_TORQUE_CONTROL_DEPEND_MK)) # -------------------------------------------

PREFER.py-talos-torque-control?=	robotpkg

SYSTEM_SEARCH.py-talos-torque-control=\
  'include/sot/torque-control/config.hh:/TALOS_TORQUE_CONTROL_VERSION /s/[^0-9.]//gp'				\
  'lib/libtalos-torque-control.so'										\
  'lib/cmake/talos-torque-control/talos-torque-controlConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos-torque-control.pc:/Version/s/[^0-9.]//gp'						\
  '${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/torque_control/talos/__init__.py'

DEPEND_USE+=				py-talos-torque-control

include ../../mk/sysdep/python.mk

DEPEND_ABI.py-talos-torque-control?=	${PKGTAG.python-}talos-torque-control>=1.0.0
DEPEND_DIR.py-talos-torque-control?=	../../wip/py-talos-torque-control

endif # PY_TALOS_TORQUE_CONTROL_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
