# robotpkg depend.mk for:	devel/infuse-MTI
# Created:			Pierre Narvor on Tue, 21 Aug 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
INFUSE_MTI_DEPEND_MK:=${INFUSE_MTI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		infuse-MTI
endif

ifeq (+,$(INFUSE_MTI_DEPEND_MK))
PREFER.INFUSE_MTI?=	robotpkg

DEPEND_USE+=		infuse-MTI

DEPEND_ABI.INFUSE_MTI?=	infuse-MTI>=0.7
DEPEND_DIR.INFUSE_MTI?=	../../wip/infuse-MTI

SYSTEM_SEARCH.INFUSE_MTI=\
	include/MTI-clients/MTI.h \
	lib/pkgconfig/MTI-clients.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
