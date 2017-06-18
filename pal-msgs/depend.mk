# robotpkg depend.mk for:	wip/pal-msgs
# Created:			Olivier Stasse on Sun, 18 Jun 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_MSGS_DEPEND_MK:=	${PAL_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-msgs
endif

ifeq (+,$(PAL_MSGS_DEPEND_MK)) # ---------------------------------

PREFER.pal-msgs?=	robotpkg

DEPEND_USE+=			pal-msgs

DEPEND_ABI.pal-msgs?=\
	pal-msgs>=0.11.3
DEPEND_DIR.pal-msgs?=\
	../../wip/pal-msgs

SYSTEM_SEARCH.pal-msgs=\
  'include/pal_behaviour_msgs/BehaviourArgument.h'	\
  'share/pal_behaviour_msgs/package.xml:/<version>/s/[^0-9.]//gp'

endif # PAL_MSGS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
