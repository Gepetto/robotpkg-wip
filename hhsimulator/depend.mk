# robotpkg depend.mk for:	wip/hhsimulator
# Created:			François Magimel on Thur, 16 Jul 2015

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HHSIMULATOR_DEPEND_MK:=	${HHSIMULATOR_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hhsimulator
endif

ifeq (+,$(HHSIMULATOR_DEPEND_MK)) # ----------------------------------------

PREFER.hhsimulator?=	robotpkg

DEPEND_USE+=		hhsimulator
#DEPEND_ABI.py-hhsimulator?=	${PKGTAG.python}-hhsimulator>=1.0
DEPEND_ABI.hhsimulator?=	hhsimulator
DEPEND_DIR.hhsimulator?=	../../wip/hhsimulator

SYSTEM_SEARCH.hhsimulator=\
	'${PYTHON_SYSLIBSEARCH}/hhsimulator/__init__.py:/__version__/s/[^0-9.]//gp'

include ../../mk/sysdep/python.mk

endif # HHSIMULATOR_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
