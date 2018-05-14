# robotpkg depend.mk for:	wip/talos-metapkg-ros-control-sot
# Created:			Olivier Stasse on Wed, 5 May 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TALOS_ROS_CONTROL_SOT_DEPEND_MK:=	${TALOS_ROS_CONTROL_SOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			talos-metapkg-ros-control-sot
endif

ifeq (+,$(TALOS_ROS_CONTROL_SOT_DEPEND_MK)) # ----------------------------------

PREFER.talos-metapkg-ros-control-sot?=	robotpkg

DEPEND_USE+=			talos-metapkg-ros-control-sot

DEPEND_ABI.talos-metapkg-ros-control-sot?=	talos-metapkg-ros-control-sot>=0.0.1
DEPEND_DIR.talos-metapkg-ros-control-sot?=	../../wip/talos-metapkg-ros-control-sot

SYSTEM_SEARCH.talos-metapkg-ros-control-sot=\
  'share/roscontrol_sot_talos/package.xml:/<version>/s/[^0-9.]//gp'	\
  'share/roscontrol_sot_talos/cmake/roscontrol_sot_talosConfig.cmake'   \
  'lib/pkgconfig/roscontrol_sot_talos.pc:/Version/s/[^0-9.]//gp' 	

endif # TALOS_ROS_CONTROL_SOT_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
