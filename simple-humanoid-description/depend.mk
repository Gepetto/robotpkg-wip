# robotpkg Makefile for:	wip/
# Created:			Rohan Budhiraja on Fri, 8 Apr 2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SIMPLE_HUMANOID_DESCRIPTION_DEPEND_MK:=	${SIMPLE_HUMANOID_DESCRIPTION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		simple-humanoid-description
endif

ifeq (+,$(SIMPLE_HUMANOID_DESCRIPTION_DEPEND_MK)) # --------------------------------------

PREFER.simple-humanoid-description?=	robotpkg

SYSTEM_SEARCH.simple-humanoid-description=\
	share/simple_humanoid_description/urdf/simple_humanoid.urdf \
	share/simple_humanoid_description/srdf/simple_humanoid.srdf \
	lib/pkgconfig/simple_humanoid_description.pc

DEPEND_USE+=		simple-humanoid-description

DEPEND_ABI.simple-humanoid-description?=	simple-humanoid-description>=1.0.1
DEPEND_DIR.simple-humanoid-description?=	../../wip/simple-humanoid-description

endif # simple_humanoid_description_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
