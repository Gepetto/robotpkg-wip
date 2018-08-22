# robotpkg depend.mk for:	devel/infuse-pom-crisp
# Created:			Quentin Labourey on Tue, 21 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
INFUSE_POM_CRISP_DEPEND_MK:= ${INFUSE_POM_CRISP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      infuse-pom-crisp
endif

ifeq (+,$(INFUSE_POM_CRISP_DEPEND_MK)) # ---------------------------------------

PREFER.infuse-pom-crisp?=    robotpkg

DEPEND_USE+=      infuse-pom-crisp

DEPEND_ABI.infuse-pom-crisp?=  infuse-pom-crisp>=0.1
DEPEND_DIR.infuse-pom-crisp= ../../wip/infuse-pom-crisp

SYSTEM_SEARCH.infuse-pom-crisp=\
    'include/infuse_pom_crisp/Crisp.hpp' \
    'include/infuse_pom_crisp/CrispASN1.hpp' \
    'lib/cmake/infuse_pom_crisp/infuse_pom_crispConfig.cmake' \
    'lib/cmake/infuse_pom_crisp/infuse_pom_crispConfigVersion.cmake' \
    'lib/cmake/infuse_pom_crisp/infuse_pom_crispTargets-release.cmake' \
    'lib/cmake/infuse_pom_crisp/infuse_pom_crispTargets.cmake' \
    'lib/libinfuse_pom_crisp.so' \
    'lib/pkgconfig/infuse_pom_crisp.pc:/Version/s/[^0-9.]//gp' 


endif # INFUSE_POM_CRISP_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}
