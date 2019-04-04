# robotpkg depend.mk for:	wip/pal-wsg-gripper
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_WSG_GRIPPER_DEPEND_MK:=	${PAL_WSG_GRIPPER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-wsg-gripper
endif

ifeq (+,$(PAL_WSG_GRIPPER_DEPEND_MK)) # ---------------------------------

PREFER.pal-wsg-gripper?=	robotpkg

DEPEND_USE+=			pal-wsg-gripper

DEPEND_ABI.pal-wsg-gripper?=\
	pal-wsg-gripper>=0.0.7
DEPEND_DIR.pal-wsg-gripper?=\
	../../wip/pal-wsg-gripper

SYSTEM_SEARCH.pal-wsg-gripper=\
  'share/pal_wsg_gripper/cmake/pal_wsg_gripperConfig.cmake' \
  'share/pal_wsg_gripper/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_wsg_gripper.pc:/Version/s/[^0-9.]//gp'

endif # PAL_WSG_GRIPPER_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
