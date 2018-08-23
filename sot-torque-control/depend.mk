# robotpkg depend.mk for:	wip/sot-torque-control
# Created:			Rohan Budhiraja on Thu, 17 Dec 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_TORQUE_CONTROL_DEPEND_MK:=	${SOT_TORQUE_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-core-v3
endif

ifeq (+,$(SOT_TORQUE_CONTROL_DEPEND_MK)) # -------------------------------------------

PREFER.sot-torque-control?=	robotpkg

SYSTEM_SEARCH.sot-torque-control=\
	include/sot/torque_control/admittance-controller.hh      	\
	lib/libsot-torque-control.so					\
	'lib/pkgconfig/sot-torque-control.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-torque-control

DEPEND_ABI.sot-torque-control?=	sot-torque-control>=1.0.0
DEPEND_DIR.sot-torque-control?=	../../wip/sot-torque-control

endif # SOT_CORE_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
