# robotpkg depend.mk for:	wip/talos-data
# Created:			Olivier Stasse on Thu 10th May 2017
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TALOS_DATA_DEPEND_MK:=	${TALOS_DATA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		talos-data
endif

ifeq (+,$(TALOS_DATA_DEPEND_MK)) # -------------------------------------------

PREFER.talos-data?=	robotpkg

SYSTEM_SEARCH.talos-data=\
	'include/talos/data/config.hh:/TALOS_DATA_VERSION /s/[^0-9.]//gp'			\
	'lib/cmake/talos_data/talos_dataConfigVersion.cmake:/PACKAGE_VERSION /s/[^0-9.]//gp'	\
	'lib/libtalos_data.so'									\
	'lib/pkgconfig/talos_data.pc:/Version/s/[^0-9.]//gp'					\
	'share/talos_data/urdf/talos_reduced.urdf'

DEPEND_USE+=		talos-data

DEPEND_ABI.talos-data?=	talos-data>=1.1.0
DEPEND_DIR.talos-data?=	../../wip/talos-data

endif # TALOS_DATA_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
