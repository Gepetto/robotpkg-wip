# robotpkg depend.mk for:	robots/py-sot-application-v3
# Created:			Aurélie Clodic on Wed, 10 Jun 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOT_APPLICATION_V3_DEPEND_MK:=	${PY_SOT_APPLICATION_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-sot-application-v3
endif

ifeq (+,$(PY_SOT_APPLICATION_V3_DEPEND_MK)) # -------------------------------------------

PREFER.py-sot-application-v3?=	robotpkg

SYSTEM_SEARCH.py-sot-application-v3=\
	'${PYTHON_SYSLIBSEARCH}/dynamic_graph/sot/dynamic_pinocchio/dynamic/wrap.so'

DEPEND_USE+=		py-sot-application-v3

DEPEND_ABI.py-sot-application-v3?=	${PKGTAG.python-}sot-application-v3>=1.1.0
DEPEND_DIR.py-sot-application-v3?=	../../wip/py-sot-application-v3

endif # SOT_APPLICATION_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
