# robotpkg depend.mk for:	wip/moveit-resources
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
UNIVERSAL_ROBOT_DEPEND_MK:=	${UNIVERSAL_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		moveit-resources
endif

ifeq (+,$(UNIVERSAL_ROBOT_DEPEND_MK)) # --------------------------------------

PREFER.moveit-resources?=	robotpkg

DEPEND_USE+=		moveit-resources

DEPEND_ABI.moveit-resources?=	moveit-resources>=0.6.4
DEPEND_DIR.moveit-resources?=	../../wip/moveit-resources

SYSTEM_SEARCH.moveit-resources=\
	include/moveit_resources/config.h	\
	'lib/pkgconfig/moveit_resources.pc:/Version/s/[^0-9.]//gp'

endif # UNIVERSAL_ROBOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
