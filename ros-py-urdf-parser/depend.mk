# robotpkg depend.mk for:	wip/ros-py-urdf-parser-msgs
# Created:			Guilhem Saurel on Fri, 20 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_PY_URDF_PARSER_DEPEND_MK:=	${ROS_PY_URDF_PARSER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-py-urdf-parser
endif

ifeq (+,$(ROS_PY_URDF_PARSER_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-py-urdf-parser?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-py-urdf-parser?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=				ros-py-urdf-parser
ROS_DEPEND_USE+=			ros-py-urdf-parser

DEPEND_ABI.ros-py-urdf-parser?=		ros-${PKGTAG.python-}urdf-parser>=0.4.0
DEPEND_DIR.ros-py-urdf-parser?=		../../wip/ros-py-urdf-parser

SYSTEM_SEARCH.ros-py-urdf-parser=\
	share/urdfdom_py/package.xml	\
	'lib/pkgconfig/urdfdom_py.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.ros-py-urdf-parser=  ${PREFIX.ros-py-urdf-parser}

endif # ROS_PY_URDF_PARSER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
