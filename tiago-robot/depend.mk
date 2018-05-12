# robotpkg depend.mk for:	wip/tiago-robot
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TIAGO_ROBOT_DEPEND_MK:=	${TIAGO_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tiago-robot
endif

ifeq (+,$(TIAGO_ROBOT_DEPEND_MK)) # ----------------------------------

PREFER.tiago-robot?=	robotpkg

DEPEND_USE+=			tiago-robot

DEPEND_ABI.tiago-robot?=	tiago-robot>=0.0.35
DEPEND_DIR.tiago-robot?=	../../wip/tiago-robot

SYSTEM_SEARCH.tiago-robot=\
  'share/tiago_description/package.xml:/<version>/s/[^0-9.]//gp'	\
  'share/tiago_bringup/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tiago_description.pc:/Version/s/[^0-9.]//gp'  \
  'lib/pkgconfig/tiago_bringup.pc:/Version/s/[^0-9.]//gp'  \
  'share/tiago_description/cmake/tiago_descriptionConfig.cmake'  \
  'share/tiago_bringup/cmake/tiago_bringupConfig.cmake'

endif # TIAGO_ROBOT_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
