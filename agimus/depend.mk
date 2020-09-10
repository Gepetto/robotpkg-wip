# robotpkg depend.mk for:	wip/agimus
# Created:			Long Ha Thuc on Wed, 19 Aug 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
AGIMUS_DEPEND_MK:=	        ${AGIMUS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			agimus
endif

ifeq (+,$(AGIMUS_DEPEND_MK)) # -------------------------------------------

PREFER.agimus?=		robotpkg

DEPEND_USE+=			agimus

DEPEND_ABI.agimus?=	agimus>=1.0.1
DEPEND_DIR.agimus?=	../../wip/agimus

SYSTEM_SEARCH.agimus= \
	'lib/pkgconfig/agimus.pc:/Version/s/[^0-9.]//gp' \
	'share/agimus/cmake/agimusConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

endif # AGIMUS_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}

