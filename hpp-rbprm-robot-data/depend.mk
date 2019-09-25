# robotpkg depend.mk for:	wip/hpp-rbprm-robot-data
# Created:			Guilhem Saurel on Fri, 4 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_RBPRM_ROBOT_DATA_DEPEND_MK:=	${HPP_RBPRM_ROBOT_DATA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-rbprm-robot-data
endif

ifeq (+,$(HPP_RBPRM_ROBOT_DATA_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.hpp-rbprm-robot-data?=	robotpkg

DEPEND_USE+=		hpp-rbprm-robot-data

DEPEND_ABI.hpp-rbprm-robot-data?=	${PKGTAG.python-}hpp-rbprm-robot-data>=4.7.0
DEPEND_DIR.hpp-rbprm-robot-data?=	../../wip/hpp-rbprm-robot-data

SYSTEM_SEARCH.hpp-rbprm-robot-data=\
	include/hpp/rbprm-robot-data/config.hh	\
	'lib/pkgconfig/hpp-rbprm-robot-data.pc:/Version/s/[^0-9.]//gp'

endif # HPP_RBPRM_ROBOT_DATA_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
