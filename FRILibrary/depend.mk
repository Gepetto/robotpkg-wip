# robotpkg depend.mk for:	hardware/FRILibrary
# Created:			Matthieu Herrb on Mon, 23 May 2016
#

DEPEND_DEPTH:=	${DEPEND_DEPTH}+
FRILIBRARY_DEPEND_MK:=	${FRILIBRARY_DEPEND_MK}+

ifeq (+,${DEPEND_DEPTH})
   DEPEND_PKG+=	FRILibrary
endif

ifeq (+,${FRILIBRARTY_DEPEND_MK))

DEPEND_USE+=	FRILibrary

DEPEND_API.FRILibrary?=	FRILibrary>=1.2
DEPEND_DIR.FRILibrary?= ../../wip/FRILibary

SYSTEM_SEARCH.FRILibrary=\
	include/FRILibrary/FastResearchInterface.h \
	lib/libFastResearchInterfaceLibrary.a \
	bin/FastResearchInterfaceTest

INCLUDE_DIRS.FRILibrary= include/FRILibrary
LIBRARY_DIRS.FRILibrary= lib
RPATH_DIRS.FRILibrary=lib

endif

DEPEND_DEPTH:=	${DEPEND_DEPTH:+=}
