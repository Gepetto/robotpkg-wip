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

include ../../interfaces/openrobots-idl/depend.mk
include ../../wip/infuse-asn1-types/depend.mk
include ../../wip/infuse-idl/depend.mk
include ../../robots/rmp-libs/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
