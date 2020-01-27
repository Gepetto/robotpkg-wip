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
'lib/pkgconfig/pcl_segmentation-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_surface-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_kdtree-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_in_hand_scanner-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_tracking-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_io-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_registration-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_geometry-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_point_cloud_editor-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_people-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_outofcore-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_common-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_apps-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_search-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_features-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_octree-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_modeler-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_filters-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_sample_consensus-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_keypoints-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_visualization-1.7.pc:/Version/s/[^.0-9]//gp' \
'lib/pkgconfig/pcl_recognition-1.7.pc:/Version/s/[^.0-9]//gp' \
'include/pcl-1.7/pcl/pcl_base.h'

SYSTEM_PKG.Arch.pcl= pcl (AUR)
SYSTEM_PKG.Debian.pcl= libpcl-dev

endif

DEPEND_DEPTH:=      ${DEPEND_DEPTH:+=}
