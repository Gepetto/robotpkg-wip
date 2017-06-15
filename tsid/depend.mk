# robotpkg depend.mk for:	math/tsid
# Created:			Justin Carpentier on Thu, 16 June 2017
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TSID_DEPEND_MK:=	${TSID_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		tsid
endif

ifeq (+,$(TSID_DEPEND_MK)) # ------------------------------------------

PREFER.tsid?=	robotpkg

SYSTEM_SEARCH.tsid=\
  'lib/pkgconfig/tsid.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		tsid

DEPEND_ABI.tsid?=	tsid>=1.1.2
DEPEND_DIR.tsid?=	../../wip/tsid

endif # TSID_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
