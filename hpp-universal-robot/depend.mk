# robotpkg depend.mk for:	wip/hpp-universal-robot
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_UNIVERSAL_ROBOT_DEPEND_MK:=	${HPP_UNIVERSAL_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-universal-robot
endif

ifeq (+,$(HPP_UNIVERSAL_ROBOT_DEPEND_MK)) # --------------------------------------

PREFER.hpp-universal-robot?=	robotpkg

DEPEND_USE+=		hpp-universal-robot

DEPEND_ABI.hpp-universal-robot?=	hpp-universal-robot>=4.2.1
DEPEND_DIR.hpp-universal-robot?=	../../wip/hpp-universal-robot

SYSTEM_SEARCH.hpp-universal-robot=\
	include/hpp/universal/robot/config.hh	\
	'lib/pkgconfig/hpp-universal-robot.pc:/Version/s/[^0-9.]//gp'

endif # HPP_UNIVERSAL_ROBOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
