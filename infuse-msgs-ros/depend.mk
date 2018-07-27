# robotpkg depend.mk for:	interfaces/infuse-msgs-ros
# Created:			Ellon Paiva Mendes on Fri,  27 Jul 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
INFUSE_MSGS_ROS_DEPEND_MK:=	${INFUSE_MSGS_ROS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		infuse-msgs-ros
endif

ifeq (+,$(INFUSE_MSGS_ROS_DEPEND_MK)) # -------------------------------------

DEPEND_USE+=		infuse-msgs-ros
PREFER.infuse-msgs-ros?=	robotpkg

SYSTEM_SEARCH.infuse-msgs-ros=\
	'include/infuse_msgs/asn1_bitstream.h' \
	'lib/pkgconfig/infuse_msgs.pc'

DEPEND_ABI.infuse-msgs-ros?=	infuse-msgs-ros>=0.1.0
DEPEND_DIR.infuse-msgs-ros?=	../../wip/infuse-msgs-ros

endif # INFUSE_MSGS_ROS_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
