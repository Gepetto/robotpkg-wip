# robotpkg depend.mk for:   urdfdom
# Created:      Quentin Labourey on Fri, 17 August 2018

DEPEND_DEPTH:=          ${DEPEND_DEPTH}+
URDFDOM_DEPEND_MK:=     ${URDFDOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=        urdfdom
endif

ifeq (+,$(URDFDOM_DEPEND_MK))

PREFER.urdfdom?=        system
DEPEND_USE+=            urdfdom
DEPEND_ABI.urdfdom=     urdfdom>=0.4
SYSTEM_PKG.Ubuntu.urdfdom= liburdfdom-dev

SYSTEM_SEARCH.urdfdom=\
    'lib/pkgconfig/urdfdom_headers.pc:/Version/s/[^0-9.]//gp' \
	'lib/liburdfdom_model.so' \
	'lib/liburdfdom_model_state.so' \
	'lib/liburdfdom_sensor.so' \
	'lib/pkgconfig/urdfdom.pc' \
	'lib/pkgconfig/urdfdom_headers.pc' \
	'share/urdfdom/cmake/urdfdom-config.cmake' \
	'share/urdfdom_headers/cmake' \
	'share/urdfdom_headers/cmake/urdfdom_headers-config-version.cmake' \
	'share/urdfdom_headers/cmake/urdfdom_headers-config.cmake' \
	'include/urdf_parser/urdf_parser.h'

endif

DEPEND_DEPTH:= ${DEPEND_DEPTH:+=}
