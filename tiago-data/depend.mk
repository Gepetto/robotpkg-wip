# robotpkg depend.mk for:	wip/tiago-data
# Created:			Olivier Stasse on Thu 30th April 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TIAGO_DATA_DEPEND_MK:=	${TIAGO_DATA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		tiago-data
endif

ifeq (+,$(TIAGO_DATA_DEPEND_MK)) # -------------------------------------------

PREFER.tiago-data?=	robotpkg

SYSTEM_SEARCH.tiago-data=\
	'share/tiago_data/urdf/tiago_steel.urdf'			\
	'share/tiago_data/urdf/tiago_titanium.urdf'			\
	'lib/pkgconfig/tiago_data.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		tiago-data

DEPEND_ABI.tiago-data?=	tiago-data>=0.0.1
DEPEND_DIR.tiago-data?=	../../wip/tiago-data

endif # TIAGO_DATA_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
