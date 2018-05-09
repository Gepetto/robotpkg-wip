# robotpkg depend.mk for:	wip/tiago-moveit-config
# Created:			Olivier Stasse on Tue, 8 May 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TIAGO_MOVEIT_CONFIG_DEPEND_MK:=	${TIAGO_MOVEIT_CONFIG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tiago-moveit-config
endif

ifeq (+,$(TIAGO_MOVEIT_CONFIG_DEPEND_MK)) # ---------------------------------

PREFER.tiago-moveit-config?=	robotpkg

DEPEND_USE+=			tiago-moveit-config

DEPEND_ABI.tiago-moveit-config?=\
	tiago-moveit-config>=0.0.15
DEPEND_DIR.tiago-moveit-config?=\
	../../wip/tiago-moveit-config

SYSTEM_SEARCH.tiago-moveit-config=\
  'share/tiago_moveit_config/cmake/tiago_moveit_configConfig.cmake' \
  'share/tiago_moveit_config/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tiago_moveit_config.pc:/Version/s/[^0-9.]//gp'

endif # TIAGO_MOVEIT_CONFIG_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
