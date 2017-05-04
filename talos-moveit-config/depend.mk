# robotpkg depend.mk for:	wip/talos-moveit-config
# Created:			Olivier Stasse on Mer, 3 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_MOVEIT_CONFIG_DEPEND_MK:=	${TALOS_MOVEIT_CONFIG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-moveit-config
endif

ifeq (+,$(TALOS_MOVEIT_CONFIG_DEPEND_MK)) # ---------------------------------

PREFER.talos-moveit-config?=	robotpkg

DEPEND_USE+=			talos-moveit-config

DEPEND_ABI.talos-moveit-config?=\
	talos-moveit-config>=0.2.3
DEPEND_DIR.talos-moveit-config?=\
	../../wip/talos-moveit-config

SYSTEM_SEARCH.talos-moveit-config=\
  'share/talos_moveit_config/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/talos_moveit_config.pc:/Version/s/[^0-9.]//gp'

endif # TALOS_MOVEIT_CONFIG_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
