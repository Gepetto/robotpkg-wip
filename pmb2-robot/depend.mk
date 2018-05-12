# robotpkg depend.mk for:	wip/pmb2-robot
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PMB2_ROBOT_DEPEND_MK:=	${PMB2_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pmb2-robot
endif

ifeq (+,$(PMB2_ROBOT_DEPEND_MK)) # ----------------------------------

PREFER.pmb2-robot?=	robotpkg

DEPEND_USE+=			pmb2-robot

DEPEND_ABI.pmb2-robot?=	pmb2-robot>=1.1.8
DEPEND_DIR.pmb2-robot?=	../../wip/pmb2-robot

SYSTEM_SEARCH.pmb2-robot=\
  'share/pmb2_robot/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pmb2_description.pc:/Version/s/[^0-9.]//gp'  \
  'lib/pkgconfig/pmb2_bringup.pc:/Version/s/[^0-9.]//gp'  \
  'share/pmb2_description/cmake/pmb2_descriptionConfig.cmake'   \
  'share/pmb2_bringup/cmake/pmb2_bringupConfig.cmake'

endif # PMB2_ROBOT_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
