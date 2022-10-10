# robotpkg depend.mk for:	wip/visit-struct
# Created:			Guilhem Saurel on Mon, 10 Oct 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
VISIT_STRUCT_DEPEND_MK:=	${VISIT_STRUCT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			visit-struct
endif

ifeq (+,$(VISIT_STRUCT_DEPEND_MK)) # ------------------------------------------

PREFER.visit-struct?=		robotpkg

SYSTEM_SEARCH.visit-struct=		\
	'include/visit_struct/visit_struct.hpp'

DEPEND_USE+=			visit-struct

DEPEND_ABI.visit-struct?=	visit-struct>=1.0.0
DEPEND_DIR.visit-struct?=	../../wip/visit-struct

endif # VISIT_STRUCT_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
