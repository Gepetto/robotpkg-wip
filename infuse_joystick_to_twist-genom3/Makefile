# robotpkg Makefile for:	robots/infuse_joystick_to_twist-genom3
# Created:			Ellon Paiva Mendes on Thu, 16 Aug 2018
#

NAME=			infuse_joystick_to_twist-genom3
VERSION=		0.1

DISTNAME=		${NAME}-${VERSION}
CATEGORIES=		robots
MASTER_SITES=		http://homepages.laas.fr/emendes/infuse/
MASTER_REPOSITORY=	git ssh://git@redmine.laas.fr/laas/users/simon/infuse-joystick-to-twist.git

MAINTAINER=		laas-infuse@laas.fr
COMMENT=		GenoM3 module that converts or_joystick::state into a asn1::bitstream containing a TwistWithCovariance
LICENSE=		isc

include ../../architecture/genom3/module.mk

# For InFuse we use ROS, so keep these options enabled by default
PKG_SUGGESTED_OPTIONS+=		ros-client-c ros-client-ros ros-server

include ../../interfaces/openrobots-idl/depend.mk
include ../../wip/infuse-asn1-types/depend.mk
include ../../wip/infuse-idl/depend.mk
include ../../robots/rmp-libs/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
