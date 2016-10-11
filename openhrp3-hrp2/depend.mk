# robotpkg depend.mk for:	robots/openhrp3-hrp2


DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OPENHRP3_HRP2_DEPEND_MK:=	${OPENHRP3_HRP2_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		openhrp3-hrp2
endif

ifeq (+,$(OPENHRP3_HRP2_DEPEND_MK)) # --------------------------------

PREFER.openhrp3-hrp2?=	robotpkg

SYSTEM_SEARCH.openhrp3-hrp2=\
	'lib/pkgconfig/hrp2_14_description.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		openhrp3-hrp2

DEPEND_ABI.openhrp3-hrp2?=	openhrp3-hrp2>=1.0.0
DEPEND_DIR.openhrp3-hrp2?=	../../wip/openhrp3-hrp2

endif # OPENHRP3_HRP2_DEPEND_MK --------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
