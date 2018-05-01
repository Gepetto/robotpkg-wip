# robotpkg depend.mk for:	wip/head-action
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
HEAD_ACTION_DEPEND_MK:=	${HEAD_ACTION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			head-action
endif

ifeq (+,$(HEAD_ACTION_DEPEND_MK)) # ---------------------------------

PREFER.head-action?=	robotpkg

DEPEND_USE+=			head-action

DEPEND_ABI.head-action?=\
	head-action>=0.0.1
DEPEND_DIR.head-action?=\
	../../wip/head-action

SYSTEM_SEARCH.head-action=\
  'share/head_action/cmake/head_actionConfig.cmake'	\
  'share/head_action/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/head_action.pc:/Version/s/[^0-9.]//gp'

endif # HEAD_ACTION_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
