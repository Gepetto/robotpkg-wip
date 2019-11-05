# robotpkg depend.mk for:	wip/py36-roscontrol-sot
# Created:			Guilhem Saurel on Tue, 5 Nov 2019
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_ROSCONTROL_SOT_DEPEND_MK:=	${PY_ROSCONTROL_SOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-roscontrol-sot
endif

ifeq (+,$(PY_ROSCONTROL_SOT_DEPEND_MK)) # --------------------------------------

DEPEND_USE+=			py-roscontrol-sot
ROS_DEPEND_USE+=		py-roscontrol-sot

DEPEND_ABI.py-roscontrol-sot?=		${PKGTAG.python-}roscontrol-sot>=0.2.0
DEPEND_DIR.py-roscontrol-sot?=		../../wip/py-roscontrol-sot

SYSTEM_SEARCH.py-roscontrol-sot=\
  'include/roscontrol/sot/config.hh'						\
  'lib/librcsot_controller.so'							\
  '${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/test/sot_test_device/__init__.py'	\
  'lib/pkgconfig/roscontrol_sot.pc:/Version/s/[^0-9.]//gp'			\
  'share/controller_interface/cmake/controller_interfaceConfig.cmake'

# headers leak the ros dependency ...
include ../../middleware/ros-comm/depend.mk

include ../../mk/sysdep/python.mk

endif # PY_ROSCONTROL_SOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
