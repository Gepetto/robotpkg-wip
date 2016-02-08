# robotpkg Makefile for:	simulation/morse-mavlink
# Created:			Arnaud Degroote on Mon,  8 Feb 2016
#

PKGNAME=		morse-mavlink-${MORSE_VERSION}

include ../../simulation/morse/Makefile.common

COMMENT+=		(mavlink bindings)

CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF

CMAKE_ARGS+=		-DBUILD_MAVLINK_SUPPORT=ON
CMAKE_ARGS+=		-DBUILD_MOOS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_HLA_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_YARP_SUPPORT=OFF
CMAKE_ARGS+= 		-DPYMORSE_SUPPORT=OFF

include ../../simulation/morse/depend.mk
include ../../wip/py-mavlink/depend.mk
include ../../mk/robotpkg.mk
