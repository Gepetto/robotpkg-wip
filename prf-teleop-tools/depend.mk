# robotpkg depend.mk for:	wip/teleop-tools
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TELEOP_TOOLS_DEPEND_MK:=	${TELEOP_TOOLS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			prf-teleop-tools
endif

ifeq (+,$(TELEOP_TOOLS_DEPEND_MK)) # ----------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.prf-teleop-tools?=		${PREFER.pal}
SYSTEM_PREFIX.prf-teleop-tools?=	${SYSTEM_PREFIX.pal}

DEPEND_USE+=			prf-teleop-tools

DEPEND_ABI.prf-teleop-tools?=	prf-teleop-tools>=0.3.1
DEPEND_DIR.prf-teleop-tools?=	../../wip/prf-teleop-tools

SYSTEM_SEARCH.prf-teleop-tools=\
  'share/joy_teleop/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/joy_teleop.pc:/Version/s/[^0-9.]//gp'  \
  'share/joy_teleop/cmake/joy_teleopConfig.cmake'

endif # TELEOP_TOOLS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
