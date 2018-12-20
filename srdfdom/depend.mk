# robotpkg depend.mk for:	wip/srdfdom
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SRDFDOM_DEPEND_MK:=	${SRDFDOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		srdfdom
endif

ifeq (+,$(SRDFDOM_DEPEND_MK)) # --------------------------------------

PREFER.srdfdom?=	robotpkg

DEPEND_USE+=		srdfdom

DEPEND_ABI.srdfdom?=	srdfdom>=0.4.2
DEPEND_DIR.srdfdom?=	../../wip/srdfdom

SYSTEM_SEARCH.srdfdom=\
	include/srdfdom/model.h	\
	'lib/pkgconfig/srdfdom.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.srdfdom=  ${PREFIX.srdfdom}

endif # SRDFDOM_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
