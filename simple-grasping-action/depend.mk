# robotpkg depend.mk for:	wip/simple-grasping-action
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
SIMPLE_GRASPING_ACTION_DEPEND_MK:=	${SIMPLE_GRASPING_ACTION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			simple-grasping-action
endif

ifeq (+,$(SIMPLE_GRASPING_ACTION_DEPEND_MK)) # ---------------------------------

PREFER.simple-grasping-action?=	robotpkg

DEPEND_USE+=			simple-grasping-action

DEPEND_ABI.simple-grasping-action?=\
	simple-grasping-action>=0.9.14
DEPEND_DIR.simple-grasping-action?=\
	../../wip/simple-grasping-action

SYSTEM_SEARCH.simple-grasping-action=\
  'share/simple_grasping_action/cmake/simple_grasping_actionConfig.cmake' \
  'share/simple_grasping_action/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/simple_grasping_action.pc:/Version/s/[^0-9.]//gp'

endif # SIMPLE_GRASPING_ACTION_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
