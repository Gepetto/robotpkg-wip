# robotpkg depend.mk for:	wip/agimus-demos
# Created:			Long Ha Thuc on Wed, 19 Aug 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
AGIMUS_DEMOS_DEPEND_MK:=	        ${AGIMUS_DEMOS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			agimus-demos
endif

ifeq (+,$(AGIMUS_DEMOS_DEPEND_MK)) # -------------------------------------------

PREFER.agimus-demos?=		robotpkg

DEPEND_USE+=			agimus-demos

DEPEND_ABI.agimus-demos?=	agimus-demos>=1.1.0
DEPEND_DIR.agimus-demos?=	../../wip/agimus-demos

SYSTEM_SEARCH.agimus-demos= \
	'lib/pkgconfig/agimus-demos.pc:/Version/s/[^0-9.]//gp' \
	'share/agimus-demos/cmake/agimus-demosConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

endif # AGIMUS_DEMOS_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}

