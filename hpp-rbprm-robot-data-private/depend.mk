# robotpkg depend.mk for:	wip/hpp-rbprm-robot-data-private
# Created:			Guilhem Saurel on Tue, 29 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_RBPRM_ROBOT_DATA_PRIVATE_DEPEND_MK:=	${HPP_RBPRM_ROBOT_DATA_PRIVATE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-rbprm-robot-data-private
endif

ifeq (+,$(HPP_RBPRM_ROBOT_DATA_PRIVATE_DEPEND_MK)) # --------------------------------------

PREFER.hpp-rbprm-robot-data-private?=	robotpkg

DEPEND_USE+=		hpp-rbprm-robot-data-private

DEPEND_ABI.hpp-rbprm-robot-data-private?=	hpp-rbprm-robot-data-private>=4.2.0
DEPEND_DIR.hpp-rbprm-robot-data-private?=	../../wip/hpp-rbprm-robot-data-private

SYSTEM_SEARCH.hpp-rbprm-robot-data-private=\
	include/hpp/rbprm-robot-data-private/config.hh	\
	'lib/pkgconfig/hpp-rbprm-robot-data-private.pc:/Version/s/[^0-9.]//gp'

endif # HPP_RBPRM_ROBOT_DATA_PRIVATE_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
