# robotpkg depend.mk for:	wip/talos-bauzil
# Created:			Guilhem Saurel on Mon, 10 Aug 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_BAUZIL_DEPEND_MK:=	${TALOS_BAUZIL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-bauzil
endif

ifeq (+,$(TALOS_BAUZIL_DEPEND_MK)) # -------------------------------------------

PREFER.talos-bauzil?=		robotpkg

SYSTEM_SEARCH.talos-bauzil=										\
	'lib/pkgconfig/talos_bauzil.pc:/Version/s/[^0-9.]//gp'						\
	'share/talos_bauzil/cmake/talos_bauzilConfig-version.cmake:/PACKAGE_VERSION /s/[^0-9.]//gp'

DEPEND_USE+=			talos-bauzil

DEPEND_ABI.talos-bauzil?=	talos-bauzil>=0.1.0
DEPEND_DIR.talos-bauzil?=	../../wip/talos-bauzil

endif # TALOS_BAUZIL_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
