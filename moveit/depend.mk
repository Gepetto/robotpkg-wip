# robotpkg depend.mk for:	wip/moveit
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVEIT_DEPEND_MK:=	${MOVEIT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		moveit
endif

ifeq (+,$(MOVEIT_DEPEND_MK)) # --------------------------------------

PREFER.moveit?=	robotpkg

DEPEND_USE+=		moveit

DEPEND_ABI.moveit?=	moveit>=0.10.5
DEPEND_DIR.moveit?=	../../wip/moveit

SYSTEM_SEARCH.moveit=\
	include/moveit/backtrace/backtrace.h	\
	'lib/pkgconfig/moveit_core.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.moveit=   ${PREFIX.moveit}

endif # MOVEIT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
