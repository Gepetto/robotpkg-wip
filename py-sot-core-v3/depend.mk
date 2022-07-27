# robotpkg depend.mk for:	wip/py-sot-core-v3
# Created:			Rohan Budhiraja on Thu, 17 Dec 2015
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_SOT_CORE_V3_DEPEND_MK:=	${PY_SOT_CORE_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-sot-core-v3
endif

ifeq (+,$(PY_SOT_CORE_V3_DEPEND_MK)) # -------------------------------------------

PREFER.py-sot-core-v3?=		robotpkg

SYSTEM_SEARCH.py-sot-core-v3=\
	'include/sot/core/config.hh:/SOT_CORE_VERSION /s/[^0-9.]//gp'			\
	'lib/cmake/sot-core/sot-coreConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'lib/libsot-core.so'								\
	'lib/pkgconfig/sot-core.pc:/Version/s/[^0-9.]//gp'				\
	'share/sot-core/package.xml:/<version>/s/[^0-9.]//gp'				\
	'${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/core/wrap.so'

DEPEND_USE+=			py-sot-core-v3

DEPEND_ABI.py-sot-core-v3?=	${PKGTAG.python-}sot-core-v3>=4.1.0<5.0.0
DEPEND_DIR.py-sot-core-v3?=	../../wip/py-sot-core-v3

endif # PY_SOT_CORE_V3_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
