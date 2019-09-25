# robotpkg depend.mk for:	wip/hpp-bezier-com-traj
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_BEZIER_COM_TRAJ_DEPEND_MK:=	${HPP_BEZIER_COM_TRAJ_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-bezier-com-traj
endif

ifeq (+,$(HPP_BEZIER_COM_TRAJ_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.hpp-bezier-com-traj?=	robotpkg

DEPEND_USE+=		hpp-bezier-com-traj

DEPEND_ABI.hpp-bezier-com-traj?=	${PKGTAG.python-}hpp-bezier-com-traj>=4.7.0
DEPEND_DIR.hpp-bezier-com-traj?=	../../wip/hpp-bezier-com-traj

SYSTEM_SEARCH.hpp-bezier-com-traj=\
	include/hpp/bezier-com-traj/config.hh	\
	lib/libhpp-bezier-com-traj.so	\
	'lib/pkgconfig/hpp-bezier-com-traj.pc:/Version/s/[^0-9.]//gp'

endif # HPP_BEZIER_COM_TRAJ_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
