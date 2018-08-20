# robotpkg depend.mk for:	devel/infuse-pom-base
# Created:			Quentin Labourey on Mon, 20 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
INFUSE_POM_BASE_DEPEND_MK:= ${INFUSE_POM_BASE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      infuse-pom-base
endif

ifeq (+,$(INFUSE_POM_BASE_DEPEND_MK)) # ---------------------------------------

PREFER.infuse-pom-base?=    robotpkg

DEPEND_USE+=      infuse-pom-base

DEPEND_ABI.infuse-pom-base?=  infuse-pom-base>=0.1
DEPEND_DIR.infuse-pom-base= ../../wip/infuse-pom-base

SYSTEM_SEARCH.infuse-pom-base=\
    'include/infuse_pom_base/PositionManagerBase.hpp' \
    'include/infuse_pom_base/UrdfParser.hpp' \
    'lib/cmake/infuse_pom_base/infuse_pom_baseConfig.cmake' \
    'lib/cmake/infuse_pom_base/infuse_pom_baseConfigVersion.cmake' \
    'lib/cmake/infuse_pom_base/infuse_pom_baseTargets-release.cmake' \
    'lib/cmake/infuse_pom_base/infuse_pom_baseTargets.cmake' \
    'lib/libinfuse_pom_base.so' \
    'lib/pkgconfig/infuse_pom_base.pc:/Version/s/[^0-9.]//gp' 

endif # INFUSE_POM_BASE_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}
