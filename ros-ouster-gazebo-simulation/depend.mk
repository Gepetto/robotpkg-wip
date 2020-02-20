# robotpkg depend.mk for:	wip/ros-ouster-gazebo-simulation
# Created:			Guilhem Saurel on Thu, 20 Feb 2020
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_OUSTER_GAZEBO_SIMULATION_DEPEND_MK:=	${ROS_OUSTER_GAZEBO_SIMULATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=					ros-ouster-gazebo-simulation
endif

ifeq (+,$(ROS_OUSTER_GAZEBO_SIMULATION_DEPEND_MK)) # --------------------------------------

PREFER.ros-ouster-gazebo-simulation?=		robotpkg  # not yet in ROS

DEPEND_USE+=					ros-ouster-gazebo-simulation
ROS_DEPEND_USE+=				ros-ouster-gazebo-simulation

DEPEND_ABI.ros-ouster-gazebo-simulation?=	ros-ouster-gazebo-simulation>=2.0.0
DEPEND_DIR.ros-ouster-gazebo-simulation?=	../../wip/ros-ouster-gazebo-simulation

SYSTEM_SEARCH.ros-ouster-gazebo-simulation=\
	'share/ouster_os1_64/package.xml:/<version>/s/[^0-9.]//gp'			\
	'share/ouster_gazebo_plugins/cmake/ouster_gazebo_pluginsConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

endif # ROS_OUSTER_GAZEBO_SIMULATION_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=					${DEPEND_DEPTH:+=}
