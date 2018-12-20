# robotpkg depend.mk for:	wip/octomap-msgs
# Created:			Guilhem Saurel on Fri, 20 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OCTOMAP_MSGS_DEPEND_MK:=	${OCTOMAP_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		octomap-msgs
endif

ifeq (+,$(OCTOMAP_MSGS_DEPEND_MK)) # --------------------------------------

PREFER.octomap-msgs?=	robotpkg

DEPEND_USE+=		octomap-msgs

DEPEND_ABI.octomap-msgs?=	octomap-msgs>=0.3.3
DEPEND_DIR.octomap-msgs?=	../../wip/octomap-msgs

SYSTEM_SEARCH.octomap-msgs=\
	include/octomap_msgs/conversions.h	\
	'lib/pkgconfig/octomap_msgs.pc:/Version/s/[^0-9.]//gp'

endif # OCTOMAP_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
