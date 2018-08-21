# robotpkg depend.mk for:	devel/infuse-asn1-conversions
# Created:			Quentin Labourey on Tue, 21 Aug 2018
#

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
INFUSE_ASN1_CONVERSIONS_DEPEND_MK:= ${INFUSE_ASN1_CONVERSIONS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      infuse-asn1-conversions
endif

ifeq (+,$(INFUSE_ASN1_CONVERSIONS_DEPEND_MK)) # ---------------------------------------

PREFER.infuse-asn1-conversions?=    robotpkg

DEPEND_USE+=      infuse-asn1-conversions

DEPEND_ABI.infuse-asn1-conversions?=  infuse-asn1-conversions>=0.3
DEPEND_DIR.infuse-asn1-conversions= ../../wip/infuse-asn1-conversions

SYSTEM_SEARCH.infuse-asn1-conversions=\
    'lib/cmake/infuse_asn1_conversions/infuse_asn1_conversionsConfig.cmake' \
    'lib/cmake/infuse_asn1_conversions/infuse_asn1_conversionsConfigVersion.cmake' \
    'lib/cmake/infuse_asn1_conversions/infuse_asn1_conversionsTargets-release.cmake' \
    'lib/cmake/infuse_asn1_conversions/infuse_asn1_conversionsTargets.cmake' \
    'lib/pkgconfig/infuse_asn1_conversions_base.pc:/Version/s/[^0-9.]//gp'

endif # INFUSE_ASN1_CONVERSIONS_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}
