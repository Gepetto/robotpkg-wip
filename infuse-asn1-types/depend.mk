# robotpkg depend.mk for:	devel/infuse-asn1-types
# Created:			Ellon Paiva Mendes on Thu, 26 Jul 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
INFUSE_ASN1_TYPES_DEPEND_MK:= ${INFUSE_ASN1_TYPES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      infuse-asn1-types
endif

ifeq (+,$(INFUSE_ASN1_TYPES_DEPEND_MK)) # ---------------------------------------

PREFER.infuse-asn1-types?=    robotpkg

DEPEND_USE+=      infuse-asn1-types

DEPEND_ABI.infuse-asn1-types?=  infuse-asn1-types>=0.2
DEPEND_DIR.infuse-asn1-types= ../../wip/infuse-asn1-types

SYSTEM_SEARCH.infuse-asn1-types=\
  'include/infuse_asn1_types/asn1crt.h' \
  'include/infuse_asn1_types/taste-extended.h' \
  'include/infuse_asn1_types/taste-types.h' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesConfig.cmake' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesConfigVersion.cmake' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesTargets-release.cmake' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesTargets.cmake' \
  'lib/pkgconfig/infuse_asn1_types.pc:/Version/s/[^0-9.]//gp' \
  'lib/libinfuse_asn1_types.so'

endif # INFUSE_ASN1_TYPES_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}

