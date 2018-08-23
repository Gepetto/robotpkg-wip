# robotpkg Makefile for:	wip/infuse-crisp-genom3
# Created:			Quentin Labourey on Tue, 21 Aug 2018
#

VERSION=            0.1
DISTNAME=           infuse_crisp-genom3-${VERSION}
CATEGORIES=         wip
MASTER_SITES=		http://homepages.laas.fr/qlaboure/infuse/
MASTER_REPOSITORY=	ssh://git@redmine.laas.fr/laas/users/simon/infuse/infuse-crisp-genom3.git
MAINTAINER=		    laas-infuse@laas.fr
COMMENT=		    GenoM3 interface module the Common Robot Internal State Publisher (CRISP)
LICENSE=		    2-clause-bsd

# The .gen file is not (yet) prefixed with 'infuse_', so we need the following lines.
GENOM_MODULE=	infuse_crisp
WRKSRC=           ${WRKDIR}/infuse_crisp-genom3-${VERSION}

include ../../architecture/genom3/module.mk

# In InFuse we use ROS, so keep these options enabled by default
PKG_SUGGESTED_OPTIONS+=         ros-client-c ros-client-ros ros-server


include ../../interfaces/openrobots-idl/depend.mk
include ../../wip/infuse-idl/depend.mk
include ../../wip/infuse-pom-crisp/depend.mk
include ../../wip/infuse-pom-base/depend.mk
include ../../wip/infuse-asn1-conversions/depend.mk
include ../../wip/infuse-asn1-types/depend.mk
include ../../wip/sysdep/autoconf-archive.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

