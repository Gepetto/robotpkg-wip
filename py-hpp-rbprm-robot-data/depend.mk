# robotpkg depend.mk for:	wip/py-hpp-rbprm-robot-data
# Created:			Guilhem Saurel on Fri, 4 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_RBPRM_ROBOT_DATA_DEPEND_MK:=	${PY_HPP_RBPRM_ROBOT_DATA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-rbprm-robot-data
endif

ifeq (+,$(PY_HPP_RBPRM_ROBOT_DATA_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-rbprm-robot-data?=	robotpkg

DEPEND_USE+=		py-hpp-rbprm-robot-data

DEPEND_ABI.py-hpp-rbprm-robot-data?=	${PKGTAG.python-}hpp-rbprm-robot-data>=4.9.0
DEPEND_DIR.py-hpp-rbprm-robot-data?=	../../wip/py-hpp-rbprm-robot-data

SYSTEM_SEARCH.py-hpp-rbprm-robot-data=										\
	'include/hpp/rbprm-robot-data/config.hh'								\
	'lib/cmake/hpp-rbprm-robot-data/hpp-rbprm-robot-dataConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'lib/pkgconfig/hpp-rbprm-robot-data.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_RBPRM_ROBOT_DATA_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
