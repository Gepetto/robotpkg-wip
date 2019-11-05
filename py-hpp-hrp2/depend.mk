# robotpkg depend.mk for:	wip/py36-hpp-hrp2
# Created:			Guilhem Saurel on Tue,  8 Oct 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_HRP2_DEPEND_MK:=	${PY_HPP_HRP2_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-hrp2
endif

ifeq (+,$(PY_HPP_HRP2_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-hrp2?=	robotpkg

DEPEND_USE+=		py-hpp-hrp2

DEPEND_ABI.py-hpp-hrp2?=	${PKGTAG.python-}hpp-hrp2>=4.7.0
DEPEND_DIR.py-hpp-hrp2?=	../../wip/py-hpp-hrp2

SYSTEM_SEARCH.py-hpp-hrp2=\
	include/hpp/hrp2/config.hh	\
	'lib/pkgconfig/hpp-hrp2.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_HRP2_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
