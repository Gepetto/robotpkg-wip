# robotpkg depend.mk for:	wip/py-hpp-centroidal-dynamics
# Created:			Guilhem Saurel on Fri, 2 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_CENTROIDAL_DYNAMICS_DEPEND_MK:=	${PY_HPP_CENTROIDAL_DYNAMICS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-centroidal-dynamics
endif

ifeq (+,$(PY_HPP_CENTROIDAL_DYNAMICS_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-centroidal-dynamics?=	robotpkg

DEPEND_USE+=		py-hpp-centroidal-dynamics

DEPEND_ABI.py-hpp-centroidal-dynamics?=	${PKGTAG.python-}hpp-centroidal-dynamics>=4.7.0
DEPEND_DIR.py-hpp-centroidal-dynamics?=	../../wip/py-hpp-centroidal-dynamics

SYSTEM_SEARCH.py-hpp-centroidal-dynamics=\
	include/hpp/centroidal-dynamics/config.hh	\
	lib/libhpp-centroidal-dynamics.so	\
	'lib/pkgconfig/hpp-centroidal-dynamics.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_CENTROIDAL_DYNAMICS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
