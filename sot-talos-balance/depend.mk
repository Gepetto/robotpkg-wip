# robotpkg depend.mk for:	wip/sot-talos-balance
# Created:			Olivier Stasse on Tue, 14 May 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_TALOS_BALANCE_DEPEND_MK:=	${SOT_TALOS_BALANCE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-talos-balance
endif

ifeq (+,$(SOT_TALOS_BALANCE_DEPEND_MK)) # -------------------------------------------

PREFER.sot-talos-balance?=	robotpkg

SYSTEM_SEARCH.sot-talos-balance=\
	lib/libsot-talos-balance.so					\
	'lib/pkgconfig/sot-talos-balance.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-talos-balance

DEPEND_ABI.sot-talos-balance?=	sot-talos-balance>=2.0.0
DEPEND_DIR.sot-talos-balance?=	../../wip/sot-talos-balance

endif # SOT_CORE_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
