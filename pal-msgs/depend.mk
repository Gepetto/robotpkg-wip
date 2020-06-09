# robotpkg depend.mk for:	wip/pal-msgs
# Created:			Olivier Stasse on Sun, 18 Jun 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_MSGS_DEPEND_MK:=	${PAL_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-msgs
endif

ifeq (+,$(PAL_MSGS_DEPEND_MK)) # ---------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.pal-msgs?=	${PREFER.pal}

DEPEND_USE+=			pal-msgs

DEPEND_ABI.pal-msgs?=\
	pal-msgs>=0.11.3
DEPEND_DIR.pal-msgs?=\
	../../wip/pal-msgs

SYSTEM_SEARCH.pal-msgs=\
  'include/pal_behaviour_msgs/BehaviourArgument.h'	\
  'share/pal_behaviour_msgs/package.xml:/<version>/s/[^0-9.]//gp'\
  $(foreach _,								\
	pal_behaviour_msgs						\
	pal_common_msgs							\
	pal_control_msgs						\
	pal_detection_msgs						\
	pal_device_msgs							\
	pal_interaction_msgs						\
	pal_motion_model_msgs						\
	pal_multirobot_msgs						\
	pal_navigation_msgs						\
	pal_tablet_msgs							\
	pal_vision_msgs							\
	pal_visual_localization_msgs					\
	pal_walking_msgs						\
	pal_wifi_localization_msgs,					\
  'share/$_/cmake/$_Config.cmake'					\
  'lib/pkgconfig/$_.pc:/Version/s/[^0-9.]//gp')


endif # PAL_MSGS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
