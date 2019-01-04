# robotpkg depend.mk for:	wip/hpp-centroidal-dynamics
# Created:			Guilhem Saurel on Fri, 2 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_CENTROIDAL_DYNAMICS_DEPEND_MK:=	${HPP_CENTROIDAL_DYNAMICS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-centroidal-dynamics
endif

ifeq (+,$(HPP_CENTROIDAL_DYNAMICS_DEPEND_MK)) # --------------------------------------

PREFER.hpp-centroidal-dynamics?=	robotpkg

DEPEND_USE+=		hpp-centroidal-dynamics

DEPEND_ABI.hpp-centroidal-dynamics?=	hpp-centroidal-dynamics>=4.2.0
DEPEND_DIR.hpp-centroidal-dynamics?=	../../wip/hpp-centroidal-dynamics

SYSTEM_SEARCH.hpp-centroidal-dynamics=\
	include/hpp/centroidal-dynamics/config.hh	\
	lib/libhpp-centroidal-dynamics.so	\
	'lib/pkgconfig/hpp-centroidal-dynamics.pc:/Version/s/[^0-9.]//gp'

endif # HPP_CENTROIDAL_DYNAMICS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
