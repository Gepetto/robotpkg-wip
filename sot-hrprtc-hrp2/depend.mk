# robotpkg depend.mk for:	wip/sot-hrprtc-hrp2
# Created:			Olivier Stasse on Thu, 28th Jan 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_HRPRTC_HRP2_DEPEND_MK:=	${SOT_HRPRTC_HRP2_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-hrprtc-hrp2
endif

ifeq (+,$(SOT_HRPRTC_HRP2_DEPEND_MK)) # -------------------------------------------

PREFER.sot-hrprtc-hrp2?=	robotpkg

SYSTEM_SEARCH.sot-hrprtc-hrp2=\
	include/sot-hrprtc-hrp2/config.h				\
	'lib/pkgconfig/sot-hrprtc-hrp2.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-hrprtc-hrp2

DEPEND_ABI.sot-hrprtc-hrp2?=	sot-hrprtc-hrp2>=1.0.1
DEPEND_DIR.sot-hrprtc-hrp2?=	../../wip/sot-hrprtc-hrp2

endif # SOT_HRPRTC_HRP2_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
