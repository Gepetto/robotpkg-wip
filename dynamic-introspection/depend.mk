# robotpkg depend.mk for:	wip/dynamic_introspection
# Created:			Olivier Stasse on fri, 27 Apr 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
DYNAMIC_INTROSPECTION_DEPEND_MK:=	${DYNAMIC_INTROSPECTION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			dynamic_introspection
endif

ifeq (+,$(DYNAMIC_INTROSPECTION_DEPEND_MK)) # ---------------------------------

PREFER.dynamic-introspection?=	robotpkg

SYSTEM_SEARCH.dynamic-introspection=\
    'lib/pkgconfig/dynamic_introspection.pc:/Version/s/[^0-9.]//gp' \
    'share/dynamic_introspection/cmake/dynamic_introspectionConfig.cmake'

DEPEND_USE+=			dynamic-introspection

DEPEND_ABI.dynamic-introspection?=\
	dynamic-introspection>=1.0.5
DEPEND_DIR.dynamic-introspection?=\
	../../wip/dynamic-introspection

endif # DYNAMIC_INTROSPECTION_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
