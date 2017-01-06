# robotpkg depend.mk for:	robots/sot-application
# Created:			Aurélie Clodic on Wed, 10 Jun 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_APPLICATION_V3_DEPEND_MK:=	${SOT_APPLICATION_V3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-application-v3
endif

ifeq (+,$(SOT_APPLICATION_V3_DEPEND_MK)) # -------------------------------------------

PREFER.sot-application-v3?=	robotpkg

SYSTEM_SEARCH.sot-application-v3=\
	'lib/pkgconfig/sot-application.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-application-v3

DEPEND_ABI.sot-application-v3?=	sot-application-v3>=1.1.0
DEPEND_DIR.sot-application-v3?=	../../wip/sot-application-v3

endif # SOT_APPLICATION_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
