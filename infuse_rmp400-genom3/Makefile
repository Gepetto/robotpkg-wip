
VERSION=		0.2
DISTNAME=		infuse_rmp400-genom3-${VERSION}
CATEGORIES=		robots
MASTER_SITES=		http://homepages.laas.fr/emendes/infuse/
MASTER_REPOSITORY=	ssh://git@redmine.laas.fr/laas/users/simon/infuse/infuse-rmp400-genom3.git

MAINTAINER=		laas-infuse@laas.fr
COMMENT=		GenoM3 interface module for the Segway RMP400 with InFuse layer
LICENSE=		isc

# The .gen file is not (yet) prefixed with 'infuse_', so we need the following lines.
GENOM_MODULE=	rmp400
WRKSRC=           ${WRKDIR}/rmp400-genom3-${VERSION}

include ../../architecture/genom3/module.mk

# In InFuse we use ROS, so keep these options enabled by default
PKG_SUGGESTED_OPTIONS+=         ros-client-c ros-client-ros ros-server

include ../../interfaces/openrobots-idl/depend.mk
include ../../wip/infuse-asn1-types/depend.mk
include ../../wip/infuse-idl/depend.mk
include ../../hardware/gyro-libs/depend.mk
include ../../robots/rmp-libs/depend.mk
include ../../robots/mana-emergency/depend.mk
include ../../mk/language/c.mk
include ../../hardware/MTI/depend.mk
include ../../mk/robotpkg.mk

