# robotpkg depend.mk for:	wip/py310-mpc-interface
# Created:			Guilhem Saurel on Wed, 10 Aug 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_MPC_INTERFACE_DEPEND_MK:=	${PY_MPC_INTERFACE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-mpc-interface
endif

ifeq (+,$(PY_MPC_INTERFACE_DEPEND_MK)) # -----------------------------------

PREFER.py-mpc-interface?=	robotpkg

DEPEND_USE+=			py-mpc-interface
DEPEND_ABI.py-mpc-interface?=	${PKGTAG.python-}mpc-interface>=1.0.0
DEPEND_DIR.py-mpc-interface?=	../../wip/py-mpc-interface

SYSTEM_SEARCH.py-mpc-interface=\
  'include/mpc-interface/config.hh:/MPC_INTERFACE_VERSION /s/[^0-9.]//gp'				\
  'lib/libmpc-interface.so'										\
  '${PYTHON_SYSLIBSEARCH}/mpc_interface/wrap.so'							\
  '${PYTHON_SYSLIBSEARCH}/mpc_interface/__init__.py'							\
  'lib/cmake/mpc-interface/mpc-interfaceConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'		\
  'lib/pkgconfig/mpc-interface.pc:/Version/s/[^0-9.]//gp'						\
  'share/mpc-interface/package.xml:/<version>/s/[^0-9.]//gp'

include ../../mk/sysdep/python.mk

endif # PY_MPC_INTERFACE_DEPEND_MK -----------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
