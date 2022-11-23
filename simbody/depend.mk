# robotpkg depend.mk for:	simulation/simbody
# Created:			Guilhem Saurel on Wed, 23 Nov 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
SIMBODY_DEPEND_MK:=		${SIMBODY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			simbody
endif

ifeq (+,$(SIMBODY_DEPEND_MK)) # ------------------------------------------

PREFER.simbody?=			robotpkg

SYSTEM_SEARCH.simbody=								\
  'include/simbody/Simbody.h'							\
  'lib/cmake/simbody/SimbodyConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libSimTKcommon.so'

DEPEND_USE+=			simbody

DEPEND_ABI.simbody?=		simbody>=3.7
DEPEND_DIR.simbody?=		../../wip/simbody


endif # SIMBODY_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
