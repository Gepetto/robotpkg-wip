# robotpkg depend.mk for:	wip/agimus-sot
# Created:			Long Ha Thuc on Wed, 19 Aug 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
AGIMUS_SOT_DEPEND_MK:=	        ${AGIMUS_SOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			agimus-sot
endif

ifeq (+,$(AGIMUS_SOT_DEPEND_MK)) # -------------------------------------------

PREFER.agimus-sot?=		robotpkg

DEPEND_USE+=			agimus-sot

DEPEND_ABI.agimus-sot?=	agimus-sot>=1.0.2
DEPEND_DIR.agimus-sot?=	../../wip/agimus-sot

SYSTEM_SEARCH.agimus-sot=	\
	'lib/pkgconfig/agimus-sot.pc:/Version/s/[^0-9.]//gp' \ 
	'lib/libagimus_sot.so'	

endif # AGIMUS_SOT_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
