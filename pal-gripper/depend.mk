# robotpkg depend.mk for:	wip/pal-gripper
# Created:			Olivier Stasse on Tue, 8 May 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_GRIPPER_DEPEND_MK:=	${PAL_GRIPPER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-gripper
endif

ifeq (+,$(PAL_GRIPPER_DEPEND_MK)) # ----------------------------------

PREFER.pal-gripper?=	robotpkg

DEPEND_USE+=			pal-gripper

DEPEND_ABI.pal-gripper?=	pal-gripper>=0.2.8
DEPEND_DIR.pal-gripper?=	../../wip/pal-gripper

SYSTEM_SEARCH.pal-gripper=\
  'lib/pal_gripper_configuratio/home_gripper.py'		\
  'share/pal_gripper/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pal_gripper.pc:/Version/s/[^0-9.]//gp'  \
  'share/pal_gripper/cmake/pal_gripperConfig.cmake'

endif # PAL_GRIPPER_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
