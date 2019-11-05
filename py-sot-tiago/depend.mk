# robotpkg depend.mk for:	wip/py-sot-tiago
# Created:			Olivier Stasse on 1st May 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SOT_TIAGO_DEPEND_MK:=	${PY_SOT_TIAGO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-sot-tiago
endif

ifeq (+,$(PY_SOT_TIAGO_DEPEND_MK)) # -------------------------------------------

include ../../mk/sysdep/python.mk

PREFER.py-sot-tiago?=	robotpkg

SYSTEM_SEARCH.py-sot-tiago=\
	include/sot-tiago/config.hh				\
	'lib/pkgconfig/sot-tiago.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		py-sot-tiago

DEPEND_ABI.py-sot-tiago?=	${PKGTAG.python-}sot-tiago>=1.3.0
DEPEND_DIR.py-sot-tiago?=	../../wip/py-sot-tiago

endif # PY_SOT_TIAGO_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
