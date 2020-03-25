# robotpkg depend.mk for:	wip/talos-torque-control
# Created:			Guilhem Saurel on Wed, 25 Mar 2020
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
TALOS_TORQUE_CONTROL_DEPEND_MK:=	${TALOS_TORQUE_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				sot-torque-control
endif

ifeq (+,$(TALOS_TORQUE_CONTROL_DEPEND_MK)) # -------------------------------------------

PREFER.talos-torque-control?=		robotpkg

SYSTEM_SEARCH.talos-torque-control=\
  'include/sot/torque-control/config.hh:/TALOS_TORQUE_CONTROL_VERSION /s/[^0-9.]//gp'				\
  'lib/libtalos-torque-control.so'										\
  'lib/cmake/talos-torque-control/talos-torque-controlConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos-torque-control.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=				talos-torque-control

DEPEND_ABI.talos-torque-control?=	talos-torque-control>=1.0.0
DEPEND_DIR.talos-torque-control?=	../../wip/talos-torque-control

endif # TALOS_TORQUE_CONTROL_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
