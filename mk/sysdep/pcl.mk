# robotpkg depend.mk for:   pcl
# Created:      Ellon Paiva Mendes on Thu, 26 July 2018

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
PCL_DEPEND_MK:=    ${PCL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=        pcl
endif

ifeq (+,$(PCL_DEPEND_MK))

PREFER.pcl?=           system
DEPEND_USE+=            pcl
DEPEND_ABI.pcl=        pcl>=1.7
SYSTEM_SEARCH.pcl= \
'lib/libpcl_visualization.so' \
'lib/libpcl_segmentation.so' \
'lib/libpcl_recognition.so' \
'lib/libpcl_keypoints.so' \
'lib/libpcl_io_ply.so' \
'lib/libpcl_surface.so' \
'lib/libpcl_filters.so' \
'lib/libpcl_common.so' \
'lib/libpcl_registration.so' \
'lib/libpcl_octree.so' \
'lib/libpcl_sample_consensus.so' \
'lib/libpcl_people.so' \
'lib/libpcl_kdtree.so' \
'lib/libpcl_io.so' \
'lib/libpcl_search.so' \
'lib/libpcl_features.so' \
'lib/libpcl_tracking.so' \
'lib/libpcl_outofcore.so' \
'lib/cmake/pcl/PCLConfig.cmake' \
'lib/cmake/pcl/PCLConfigVersion.cmake' \
'lib/pkgconfig/pcl_segmentation-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_surface-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_kdtree-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_in_hand_scanner-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_tracking-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_io-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_registration-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_geometry-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_point_cloud_editor-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_people-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_outofcore-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_common-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_apps-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_search-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_features-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_octree-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_modeler-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_filters-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_sample_consensus-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_keypoints-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_visualization-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_recognition-[.0-9]*.pc:/Version/s/[^.0-9]//gp' \
'include/pcl-[.0-9]*/pcl/pcl_base.h'

SYSTEM_PKG.Arch.pcl= pcl (AUR)
SYSTEM_PKG.Debian.pcl= libpcl-dev

endif

DEPEND_DEPTH:=      ${DEPEND_DEPTH:+=}
