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

DEPEND_ABI.infuse-asn1-types?=  infuse-asn1-types>=0.1
DEPEND_DIR.infuse-asn1-types= ../../wip/infuse-asn1-types

SYSTEM_SEARCH.infuse-asn1-types=\
  'include/infuse_asn1_types/CorrespondenceMap2D.h' \
  'include/infuse_asn1_types/CorrespondenceMap3D.h' \
  'include/infuse_asn1_types/Covariance.h' \
  'include/infuse_asn1_types/Eigen.h' \
  'include/infuse_asn1_types/Geometry.h' \
  'include/infuse_asn1_types/Image_InFuse.h' \
  'include/infuse_asn1_types/Map.h' \
  'include/infuse_asn1_types/Path.h' \
  'include/infuse_asn1_types/Point.h' \
  'include/infuse_asn1_types/Pointcloud.h' \
  'include/infuse_asn1_types/Pose.h' \
  'include/infuse_asn1_types/Time.h' \
  'include/infuse_asn1_types/TransformWithCovariance.h' \
  'include/infuse_asn1_types/TwistWithCovariance.h' \
  'include/infuse_asn1_types/VisualPointFeatureVector2D.h' \
  'include/infuse_asn1_types/VisualPointFeatureVector3D.h' \
  'include/infuse_asn1_types/asn1crt.h' \
  'include/infuse_asn1_types/taste-extended.h' \
  'include/infuse_asn1_types/taste-types.h' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesConfig.cmake' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesConfigVersion.cmake' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesTargets-release.cmake' \
  'lib/cmake/infuse_asn1_types/infuse_asn1_typesTargets.cmake' \
  'lib/libinfuse_asn1_types.so'

endif # INFUSE_ASN1_TYPES_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}

