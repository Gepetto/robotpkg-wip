# robotpkg sysdep/ros-urdf-geometry-parser
# Created:			Olivier Stasse on Mon 11 2018
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
URDF_GEOMETRY_PARSER_MK:=	${URDF_GEOMETRY_PARSER_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-urdf-geometry-parser
endif

ifeq (+,$(URDF_GEOMETRY_PARSER_MK)) # ---------------------------------------------

include ../../meta-pkgs/ros-base/depend.common

PREFER.ros-urdf-geometry-parser?=		system
SYSTEM_PREFIX.ros-urdf-geometry-parser?=    ${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		ros-urdf-geometry-parser
ROS_DEPEND_USE+=		ros-urdf-geometry-parser

DEPEND_ABI.ros-urdf-geometry-parser?=	ros-urdf-geometry-parser>=0.0.1

DEPEND_METHOD.ros-urdf-geometry-parser+=build

SYSTEM_SEARCH.ros-urdf-geometry-parser+=	'share/urdf_geometry_parser/package.xml:/<version>/s/[^.0-9]//gp'


endif # URDF_GEOMETRY_PARSER_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
