# robotpkg sysdep/ros-four-wheel-steering-msgs
# Created:			Olivier Stasse on Mon 11 2018
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
URDF_GEOMETRY_PARSER_MK:=	${URDF_GEOMETRY_PARSER_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		four_wheel_steering_msgs
endif

ifeq (+,$(URDF_GEOMETRY_PARSER_MK)) # ---------------------------------------------

PREFER.ros-urdf-geometry-parser?=		system

DEPEND_USE+=		ros-urdf-geometry-parser

DEPEND_ABI.ros-urdf-geometry-parser?=	ros-urdf-geometry-parser>=0.0.1

DEPEND_METHOD.ros-urdf-geometry-parser+=build

SYSTEM_SEARCH.ros-urdf-geometry-parser+=	'share/urdf_geometry_parser/package.xml:/<version>/s/[^.0-9]//gp'


endif # URDF_GEOMETRY_PARSER_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
