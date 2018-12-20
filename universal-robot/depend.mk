# robotpkg depend.mk for:	wip/universal-robot
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
UNIVERSAL_ROBOT_DEPEND_MK:=	${UNIVERSAL_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		universal-robot
endif

ifeq (+,$(UNIVERSAL_ROBOT_DEPEND_MK)) # --------------------------------------

PREFER.universal-robot?=	robotpkg

DEPEND_USE+=		universal-robot

DEPEND_ABI.universal-robot?=	universal-robot>=1.2.1
DEPEND_DIR.universal-robot?=	../../wip/universal-robot

SYSTEM_SEARCH.universal-robot=\
	include/ur_msgs/SetIO.hh	\
	'lib/pkgconfig/ur_description.pc:/Version/s/[^0-9.]//gp'

endif # UNIVERSAL_ROBOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
