# robotpkg depend.mk for:	wip/agimus_sot_msgs
# Created:			Long Ha Thuc on Wed, 19 Aug 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
AGIMUS_SOT_MSGS_DEPEND_MK:=	        ${AGIMUS_SOT_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			agimus_sot_msgs
endif

ifeq (+,$(AGIMUS_SOT_MSGS_DEPEND_MK)) # -------------------------------------------

PREFER.agimus_sot_msgs=		robotpkg

DEPEND_USE+=			agimus_sot_msgs

DEPEND_ABI.agimus_sot_msgs?=	agimus_sot_msgs>=1.0.0
DEPEND_DIR.agimus_sot_msgs?=	../../wip/agimus_sot_msgs

SYSTEM_SEARCH.agimus_sot_msgs= \
	'lib/pkgconfig/agimus_sot_msgs.pc:/Version/s/[^0-9.]//gp' \
	'share/agimus_sot_msgs/cmake/agimus_sot_msgsConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp' \
    'share/agimus_sot_msgs/cmake/agimus_sot_msgsConfig.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

endif # AGIMUS_SOT_MSGS_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}

