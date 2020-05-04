# robotpkg depend.mk for:	wip/py-hpp-romeo
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_HPP_ROMEO_DEPEND_MK:=	${PY_HPP_ROMEO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hpp-romeo
endif

ifeq (+,$(PY_HPP_ROMEO_DEPEND_MK)) # --------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-hpp-romeo?=	robotpkg

DEPEND_USE+=		py-hpp-romeo

DEPEND_ABI.py-hpp-romeo?=	${PKGTAG.python-}hpp-romeo>=4.9.0
DEPEND_DIR.py-hpp-romeo?=	../../wip/py-hpp-romeo

SYSTEM_SEARCH.py-hpp-romeo=									\
	'include/hpp/romeo/config.hh'								\
	'lib/cmake/hpp-romeo/hpp-romeoConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'lib/pkgconfig/hpp_romeo.pc:/Version/s/[^0-9.]//gp'

endif # PY_HPP_ROMEO_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
