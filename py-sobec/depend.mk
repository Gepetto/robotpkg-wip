# robotpkg depend.mk for:	wip/py38-sobec
# Created:			Guilhem Saurel on Thu, 19 May 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_SOBEC_DEPEND_MK:=		${PY_SOBEC_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-sobec
endif

ifeq (+,$(SOBEC_DEPEND_MK)) # ------------------------------------------

PREFER.py-sobec?=		robotpkg

SYSTEM_SEARCH.py-sobec=								\
  'include/sobec/config.hh:/SOBEC_VERSION /s/[^0-9.]//gp'			\
  'include/sobec/gepadd.hpp'							\
  'lib/cmake/sobec/sobecConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libsobec.so'								\
  'lib/pkgconfig/sobec.pc:/Version/s/[^0-9.]//gp'				\
  '${PYTHON_SYSLIBSEARCH}/sobec/libsobec.so'					\
  '${PYTHON_SYSLIBSEARCH}/sobec/__init__.py'

DEPEND_USE+=			py-sobec

DEPEND_ABI.py-sobec?=		${PKGTAG.python-}sobec>=1.2.0
DEPEND_DIR.py-sobec?=		../../wip/py-sobec

endif # PY_SOBEC_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
