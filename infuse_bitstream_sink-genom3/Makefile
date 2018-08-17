# robotpkg Makefile for:	robots/infuse_bitstream_sink-genom3
# Created:			Ellon Paiva Mendes on Thu, 16 Aug 2018
#

NAME=			infuse_bitstream_sink-genom3
VERSION=		0.1

DISTNAME=		${NAME}-${VERSION}
CATEGORIES=		robots
MASTER_SITES=		http://homepages.laas.fr/emendes/infuse/
MASTER_REPOSITORY=	git ssh://git@redmine.laas.fr/laas/users/simon/infuse-joystick-to-twist.git

MAINTAINER=		laas-infuse@laas.fr
COMMENT=		GenoM3 module that prints data encoded as an asn1::bitstream
LICENSE=		isc

include ../../architecture/genom3/module.mk

# For InFuse we use ROS, so keep these options enabled by default
PKG_SUGGESTED_OPTIONS+=		ros-client-c ros-client-ros ros-server

# # This WAS SUPPOSED TO fix the double dependency on std_msgs in the
# # generated package.xml files. This does not work here probably because
# # PKG_OPTIONS here is empty. This should probably go in a 'define' to be
# # expanded later, but I don't know how to do it. :(
# ifneq (,$(filter ros-client-c,${PKG_OPTIONS}))
# 	SUBST_CLASSES+=							fix-ros-client-c-depends
# 	SUBST_STAGE.fix-ros-client-c-depends=	pre-install
# 	SUBST_MESSAGE.fix-ros-client-c-depends=	Fixing repeated dependency on std_msgs for option ros-client-c
# 	SUBST_FILES.fix-ros-client-c-depends=	../templates/ros/client/c/*/package.xml
# 	SUBST_SED.fix-ros-client-c-depends=		-e '0,/<depend>std_msgs<\/depend>/! s/<depend>std_msgs<\/depend>//'
# endif
# ifneq (,$(filter ros-client-ros,${PKG_OPTIONS}))
# 	SUBST_CLASSES+=								fix-ros-client-ros-depends
# 	SUBST_STAGE.fix-ros-client-ros-depends=		pre-install
# 	SUBST_MESSAGE.fix-ros-client-ros-depends=	Fixing repeated dependency on std_msgs for option ros-client-ros
# 	SUBST_FILES.fix-ros-client-ros-depends=		../templates/ros/client/ros/*/package.xml
# 	SUBST_SED.fix-ros-client-ros-depends=		-e '0,/<depend>std_msgs<\/depend>/! s/<depend>std_msgs<\/depend>//'
# endif
# ifneq (,$(filter ros-server,${PKG_OPTIONS}))
# 	SUBST_CLASSES+=							fix-ros-server-depends
# 	SUBST_STAGE.fix-ros-server-depends=		pre-install
# 	SUBST_MESSAGE.fix-ros-server-depends=	Fixing repeated dependency on std_msgs for option ros-server
# 	SUBST_FILES.fix-ros-server-depends=		../templates/ros/server/*/package.xml
# 	SUBST_SED.fix-ros-server-depends=		-e '0,/<depend>std_msgs<\/depend>/! s/<depend>std_msgs<\/depend>//'
# endif

# Dirty hack to fix the repeated dependency because the solution commented
# above didn't work. The installation of this package probably going to fail
# if not compiled with ROS options
SUBST_CLASSES+=							fix-std-msgs-depends
SUBST_STAGE.fix-std-msgs-depends=		pre-install
SUBST_MESSAGE.fix-std-msgs-depends=		Fixing repeated dependency on std_msgs
SUBST_FILES.fix-std-msgs-depends=		../templates/ros/server/*/package.xml
SUBST_FILES.fix-std-msgs-depends+=		../templates/ros/client/*/*/package.xml
SUBST_SED.fix-std-msgs-depends=			-e '0,/<depend>std_msgs<\/depend>/! s/<depend>std_msgs<\/depend>//'

include ../../interfaces/openrobots-idl/depend.mk
include ../../wip/infuse-asn1-types/depend.mk
include ../../wip/infuse-idl/depend.mk
include ../../robots/rmp-libs/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
