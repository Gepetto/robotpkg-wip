# robotpkg Makefile for:	wip/
# Created:			Rohan Budhiraja on Fri, 8 Apr 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
QPOASES_DEPEND_MK:=	${QPOASES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		qpOASES
endif

ifeq (+,$(QPOASES_DEPEND_MK)) # --------------------------------------

PREFER.qpOASES?=	robotpkg

SYSTEM_SEARCH.qpOASES=\
	lib/qpOASES.a

DEPEND_USE+=		qpOASES

DEPEND_ABI.qpOASES?=	qpOASES>=3.2.0
DEPEND_DIR.qpOASES?=	../../wip/qpOASES

endif # qpOASES_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
