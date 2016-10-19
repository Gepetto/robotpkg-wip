# robotpkg depend.mk for:	path/jrl-walkgen
# Created:			Anthony Mallet on Tue, 13 May 2008
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
JRL_WALKGEN_V3_DEPEND_MK:=	${JRL_WALKGEN_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jrl-walkgen-v3
endif

ifeq (+,$(JRL_WALKGEN_V3_DEPEND_MK))
PREFER.jrl-walkgen-v3?=	robotpkg

DEPEND_USE+=		jrl-walkgen-v3

DEPEND_ABI.jrl-walkgen-v3?=jrl-walkgen-v3>=4.0.0
DEPEND_DIR.jrl-walkgen-v3?=../../wip/jrl-walkgen-v3

SYSTEM_SEARCH.jrl-walkgen-v3=\
	include/jrl/walkgen/patterngeneratorinterface.hh\
	lib/pkgconfig/jrl-walkgen.pc\
	lib/libjrl-walkgen.so
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
