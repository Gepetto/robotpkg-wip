# robotpkg depend.mk for:	wip/hpp-romeo
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPPROMEO_DEPEND_MK:=	${HPPROMEO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-romeo
endif

ifeq (+,$(HPPROMEO_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.hpp-romeo?=	robotpkg

DEPEND_USE+=		hpp-romeo

DEPEND_ABI.hpp-romeo?=	${PKGTAG.python-}hpp-romeo>=4.7.0
DEPEND_DIR.hpp-romeo?=	../../wip/hpp-romeo

SYSTEM_SEARCH.hpp-romeo=\
	include/hpp/romeo/config.hh	\
	'lib/pkgconfig/hpp_romeo.pc:/Version/s/[^0-9.]//gp'

endif # HPPROMEO_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
