# robotpkg depend.mk for:	wip/py-prf-ros-control
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_PRF_ROS_CONTROL_DEPEND_MK:=	${PY_PRF_ROS_CONTROL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-prf-ros-control
endif

ifeq (+,$(PY_PRF_ROS_CONTROL_DEPEND_MK)) # ----------------------------------

PREFER.py-prf-ros-control?=	robotpkg

DEPEND_USE+=			py-prf-ros-control

DEPEND_ABI.py-prf-ros-control?=	py-prf-ros-control>=0.2
DEPEND_DIR.py-prf-ros-control?=	../../wip/py-prf-ros-control

SYSTEM_SEARCH.py-prf-ros-control=\
  'include/controller_manager/controller_loader.h'		\
  'include/controller_interface/controller.h'			\
  'include/controller_interface/controller_base.h'		\
  'include/controller_manager/controller_loader.h' 		\
  'include/controller_manager/controller_loader_interface.h'	\
  'include/controller_manager/controller_manager.h'		\
  'include/controller_manager/controller_spec.h'		\
  'include/controller_manager_msgs/ControllerState.h'		\
  'include/controller_manager_msgs/ControllerStatistics.h'	\
  'include/controller_manager_msgs/ControllersStatistics.h'	\
  'include/controller_manager_msgs/ListControllerTypes.h'	\
  'include/controller_manager_msgs/ListControllerTypesRequest.h'\
  'include/controller_manager_msgs/ListControllerTypesResponse.h' \
  'include/controller_manager_msgs/ListControllers.h'		\
  'include/controller_manager_msgs/ListControllersRequest.h'	\
  'include/controller_manager_msgs/ListControllersResponse.h'	\
  'include/controller_manager_msgs/LoadController.h'		\
  'include/controller_manager_msgs/LoadControllerRequest.h'	\
  'include/controller_manager_msgs/LoadControllerResponse.h'	\
  'include/controller_manager_msgs/ReloadControllerLibraries.h'	\
  'include/controller_manager_msgs/ReloadControllerLibrariesRequest.h'  \
  'include/controller_manager_msgs/ReloadControllerLibrariesResponse.h' \
  'include/controller_manager_msgs/SwitchController.h'		\
  'include/controller_manager_msgs/SwitchControllerRequest.h'	\
  'include/controller_manager_msgs/SwitchControllerResponse.h'	\
  'include/controller_manager_msgs/UnloadController.h'		\
  'include/controller_manager_msgs/UnloadControllerRequest.h'	\
  'include/controller_manager_msgs/UnloadControllerResponse.h'	\
  'include/controller_manager_tests/effort_test_controller.h'	\
  'include/controller_manager_tests/my_dummy_controller.h'	\
  'include/controller_manager_tests/my_robot_hw.h'		\
  'include/hardware_interface/actuator_command_interface.h'	\
  'include/hardware_interface/actuator_state_interface.h'	\
  'include/hardware_interface/controller_info.h'		\
  'include/hardware_interface/force_torque_sensor_interface.h'	\
  'include/hardware_interface/hardware_interface.h'	\
  'include/hardware_interface/imu_sensor_interface.h'	\
  'include/hardware_interface/internal/demangle_symbol.h'	\
  'include/hardware_interface/internal/hardware_resource_manager.h'	\
  'include/hardware_interface/internal/interface_manager.h'	\
  'include/hardware_interface/internal/resource_manager.h'	\
  'include/hardware_interface/joint_command_interface.h'	\
  'include/hardware_interface/joint_mode_interface.h'	\
  'include/hardware_interface/joint_state_interface.h'	\
  'include/hardware_interface/robot_hw.h'	\
  'include/joint_limits_interface/joint_limits.h'	\
  'include/joint_limits_interface/joint_limits_interface.h'	\
  'include/joint_limits_interface/joint_limits_interface_exception.h'	\
  'include/joint_limits_interface/joint_limits_rosparam.h'	\
  'include/joint_limits_interface/joint_limits_urdf.h'	\
  'include/transmission_interface/differential_transmission.h'	\
  'include/transmission_interface/differential_transmission_loader.h'	\
  'include/transmission_interface/effort_joint_interface_provider.h'	\
  'include/transmission_interface/four_bar_linkage_transmission.h'	\
  'include/transmission_interface/four_bar_linkage_transmission_loader.h'	\
  'include/transmission_interface/joint_state_interface_provider.h'	\
  'include/transmission_interface/position_joint_interface_provider.h'	\
  'include/transmission_interface/robot_transmissions.h'	\
  'include/transmission_interface/simple_transmission.h'	\
  'include/transmission_interface/simple_transmission_loader.h'	\
  'include/transmission_interface/transmission.h'	\
  'include/transmission_interface/transmission_info.h'	\
  'include/transmission_interface/transmission_interface.h'	\
  'include/transmission_interface/transmission_interface_exception.h'	\
  'include/transmission_interface/transmission_interface_loader.h'	\
  'include/transmission_interface/transmission_loader.h'	\
  'include/transmission_interface/transmission_parser.h'	\
  'include/transmission_interface/velocity_joint_interface_provider.h'	\
  'lib/libcontroller_manager.so'	\
  'lib/libcontroller_manager_tests.so'	\
  'lib/libtransmission_interface_loader.so'	\
  'lib/libtransmission_interface_loader_plugins.so'	\
  'lib/libtransmission_interface_parser.so'	\
  'share/ros_control/package.xml:/<version>/s/[^0-9.]//gp'	\
  '${PYTHON_SYSLIBSEARCH}/controller_manager/__init__.py	\
  $(foreach _,							\
	controller_interface					\
	rqt_controller_manager					\
	controller_interface					\
	controller_manager					\
	controller_manager_msgs					\
	controller_manager_tests				\
	hardware_interface					\
	joint_limits_interface					\
	transmission_interface,					\
  'share/$_/cmake/$_Config.cmake'				\
  'lib/pkgconfig/$_.pc:/Version/s/[^0-9.]//gp')

endif # PY_PRF_ROS_CONTROL_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
