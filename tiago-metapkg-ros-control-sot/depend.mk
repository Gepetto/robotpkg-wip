# robotpkg depend.mk for:	wip/tiago-metapkg-ros-control-sot
# Created:			Olivier Stasse on Wed, 30 April 2019
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TIAGO_ROS_CONTROL_SOT_DEPEND_MK:=	${TIAGO_ROS_CONTROL_SOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tiago-metapkg-ros-control-sot
endif

ifeq (+,$(TIAGO_ROS_CONTROL_SOT_DEPEND_MK)) # ----------------------------------

PREFER.tiago-metapkg-ros-control-sot?=	robotpkg

DEPEND_USE+=			tiago-metapkg-ros-control-sot

DEPEND_ABI.tiago-metapkg-ros-control-sot?=	tiago-metapkg-ros-control-sot>=0.0.1
DEPEND_DIR.tiago-metapkg-ros-control-sot?=	../../wip/tiago-metapkg-ros-control-sot

SYSTEM_SEARCH.tiago-metapkg-ros-control-sot=\
  'share/roscontrol_sot_tiago/package.xml:/<version>/s/[^0-9.]//gp'	\
  'share/roscontrol_sot_tiago/cmake/roscontrol_sot_tiagoConfig.cmake'   \
  'lib/pkgconfig/roscontrol_sot_tiago.pc:/Version/s/[^0-9.]//gp' 	

endif # TIAGO_ROS_CONTROL_SOT_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
