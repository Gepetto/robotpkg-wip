# robotpkg depend.mk for:	wip/py-hpp-baxter
# Created:			Guilhem Saurel on Mon, 28 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_BAXTER_DEPEND_MK:=	${PY_HPP_BAXTER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-baxter
endif

ifeq (+,$(PY_HPP_BAXTER_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-baxter?=	robotpkg

DEPEND_USE+=		py-hpp-baxter

DEPEND_ABI.py-hpp-baxter?=	${PKGTAG.python-}hpp-baxter>=4.9.0
DEPEND_DIR.py-hpp-baxter?=	../../wip/py-hpp-baxter

SYSTEM_SEARCH.py-hpp-baxter=									\
	'include/hpp/baxter/config.hh'								\
	'lib/cmake/hpp-baxter/hpp-baxterConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'lib/pkgconfig/hpp-baxter.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_BAXTER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
