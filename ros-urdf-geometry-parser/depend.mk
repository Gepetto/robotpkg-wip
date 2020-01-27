# robotpkg depend.mk for:	wip/ros-urdf-geometry-parser
# Created:			Guilhem Saurel on Mon, 27 Jan 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_URDF_GEOMETRY_PARSER_DEPEND_MK:=	${ROS_URDF_GEOMETRY_PARSER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=					ros-urdf-geometry-parser
endif

ifeq (+,$(ROS_URDF_GEOMETRY_PARSER_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
include ../../mk/robotpkg.prefs.mk

PREFER.ros-urdf-geometry-parser?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-urdf-geometry-parser?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=					ros-urdf-geometry-parser
ROS_DEPEND_USE+=				ros-urdf-geometry-parser

DEPEND_ABI.ros-urdf-geometry-parser?=		ros-urdf-geometry-parser>=0.0.3
DEPEND_DIR.ros-urdf-geometry-parser?=		../../wip/ros-urdf-geometry-parser

SYSTEM_SEARCH.ros-urdf-geometry-parser=\
	include/urdf_geometry_parser/urdf_geometry_parser.h								\
	lib/liburdf_geometry_parser.so											\
	'lib/pkgconfig/urdf_geometry_parser.pc:/Version/s/[^0-9.]//gp'							\
	'share/urdf_geometry_parser/cmake/urdf_geometry_parserConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'share/urdf_geometry_parser/package.xml:/<version>/s/[^.0-9]//gp'

endif # ROS_URDF_GEOMETRY_PARSER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
