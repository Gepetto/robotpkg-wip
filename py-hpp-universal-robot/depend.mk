# robotpkg depend.mk for:	wip/py-hpp-universal-robot
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_UNIVERSAL_ROBOT_DEPEND_MK:=	${PY_HPP_UNIVERSAL_ROBOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-universal-robot
endif

ifeq (+,$(PY_HPP_UNIVERSAL_ROBOT_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-universal-robot?=	robotpkg

DEPEND_USE+=		py-hpp-universal-robot

DEPEND_ABI.py-hpp-universal-robot?=	${PKGTAG.python-}hpp-universal-robot>=4.7.0
DEPEND_DIR.py-hpp-universal-robot?=	../../wip/py-hpp-universal-robot

SYSTEM_SEARCH.py-hpp-universal-robot=\
	include/hpp/universal/robot/config.hh	\
	'lib/pkgconfig/hpp-universal-robot.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_UNIVERSAL_ROBOT_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
