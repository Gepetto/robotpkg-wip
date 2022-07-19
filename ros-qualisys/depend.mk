# robotpkg depend.mk for:	wip/ros-qualisys
# Created:			Guilhem Saurel on Tue, 19 Jul 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_QUALISYS_DEPEND_MK:=	${ROS_QUALISYS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ros-qualisys
endif

ifeq (+,$(ROS_QUALISYS_DEPEND_MK)) # -----------------------------------------

PREFER.ros-qualisys?=		robotpkg

SYSTEM_SEARCH.ros-qualisys=\
  'include/ros-qualisys/config.hpp:/ROS_QUALISYS_VERSION /s/[^0-9.]//gp'			\
  'lib/libros-qualisys.so'									\
  'lib/cmake/ros-qualisys/ros-qualisysConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/ros-qualisys.pc:/Version/s/[^0-9.]//gp'					\
  'share/ros-qualisys/package.xml:/<version>/s/[^0-9.]//gp'

DEPEND_USE+=		ros-qualisys
DEPEND_ABI.ros-qualisys?=	ros-qualisys>=1.0.0
DEPEND_DIR.ros-qualisys?=	../../wip/ros-qualisys

endif # ROS_QUALISYS_DEPEND_MK -----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
