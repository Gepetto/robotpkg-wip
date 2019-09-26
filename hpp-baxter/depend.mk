# robotpkg depend.mk for:	wip/hpp-baxter
# Created:			Guilhem Saurel on Mon, 28 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_BAXTER_DEPEND_MK:=	${HPP_BAXTER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-baxter
endif

ifeq (+,$(HPP_BAXTER_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.hpp-baxter?=	robotpkg

DEPEND_USE+=		hpp-baxter

DEPEND_ABI.hpp-baxter?=	${PKGTAG.python-}hpp-baxter>=4.7.0
DEPEND_DIR.hpp-baxter?=	../../wip/hpp-baxter

SYSTEM_SEARCH.hpp-baxter=\
	include/hpp/baxter/config.hh	\
	'lib/pkgconfig/hpp-baxter.pc:/Version/s/[^0-9.]//gp'

endif # HPP_BAXTER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
