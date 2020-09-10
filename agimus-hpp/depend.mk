# robotpkg depend.mk for:	wip/agimus_hpp
# Created:			Long Ha Thuc on Wed, 19 Aug 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
AGIMUS_HPP_DEPEND_MK:=	        ${AGIMUS_HPP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			agimus_hpp
endif

ifeq (+,$(AGIMUS_HPP_DEPEND_MK)) # -------------------------------------------

PREFER.agimus_hpp?=		robotpkg

SYSTEM_SEARCH.agimus_hpp = \									\
	'lib/pkgconfig/agimus_hpp.pc:/Version/s/[^0-9.]//gp' \
	'share/agimus_hpp/cmake/agimus_hppConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

DEPEND_USE+=			agimus_hpp

DEPEND_ABI.agimus_hpp?=	agimus-hpp>=1.0.0
DEPEND_DIR.agimus_hpp?=	../../wip/agimus-hpp

endif # AGIMUS_HPP_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}


