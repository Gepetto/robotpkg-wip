# robotpkg depend.mk for:	wip/py36-hpp-hrp2
# Created:			Guilhem Saurel on Tue,  8 Oct 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_HRP2_DEPEND_MK:=	${HPP_HRP2_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-hrp2
endif

ifeq (+,$(HPP_HRP2_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.hpp-hrp2?=	robotpkg

DEPEND_USE+=		hpp-hrp2

DEPEND_ABI.hpp-hrp2?=	${PKGTAG.python-}hpp-hrp2>=4.7.0
DEPEND_DIR.hpp-hrp2?=	../../wip/hpp-hrp2

SYSTEM_SEARCH.hpp-hrp2=\
	include/hpp/hrp2/config.hh	\
	'lib/pkgconfig/hpp-hrp2.pc:/Version/s/[^0-9.]//gp'

endif # HPP_HRP2_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
