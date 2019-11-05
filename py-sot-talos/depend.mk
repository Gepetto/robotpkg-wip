# robotpkg depend.mk for:	wip/py-sot-talos
# Created:			Olivier Stasse on Thu 10th May 2017
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOT_TALOS_DEPEND_MK:=	${PY_SOT_TALOS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-sot-talos
endif

ifeq (+,$(PY_SOT_TALOS_DEPEND_MK)) # -------------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-sot-talos?=	robotpkg

SYSTEM_SEARCH.py-sot-talos=\
	include/sot-talos/config.hh				\
	'lib/pkgconfig/sot-talos.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		py-sot-talos

DEPEND_ABI.py-sot-talos?=	${PKGTAG.python-}sot-talos>=1.1.0
DEPEND_DIR.py-sot-talos?=	../../wip/py-sot-talos

endif # PY_SOT_TALOS_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
