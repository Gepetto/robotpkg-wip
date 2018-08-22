# robotpkg depend.mk for:	devel/infuse-MTI
# Created:			Pierre Narvor on Tue, 21 Aug 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
infuse-MTI_DEPEND_MK:=${infuse-MTI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		infuse-MTI
endif

ifeq (+,$(infuse-MTI_DEPEND_MK))
PREFER.infuse-MTI?=	robotpkg

DEPEND_USE+=		infuse-MTI

DEPEND_ABI.infuse-MTI?=	infuse-MTI>=0.7
DEPEND_DIR.infuse-MTI?=	../../wip/infuse-MTI

SYSTEM_SEARCH.infuse-MTI=\
	include/MTI-clients/MTI.h \
	lib/pkgconfig/MTI-clients.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
