# robotpkg Makefile for:	devel/infuse-MTI
# Created:			Pierre Narvor on Tue, 21 Aug 2018
#

NAME=               infuse-MTI
VERSION=		    0.7
DISTNAME=		    ${NAME}-${VERSION}
CATEGORIES=		    devel
MASTER_SITES=		http://homepages.laas.fr/pnarvor/infuse/
MASTER_REPOSITORY=	git ssh://git@redmine.laas.fr/laas/users/simon/mti-continued.git
HOMEPAGE=           https://redmine.laas.fr/projects/infuse
MAINTAINER=		    pnarvor@laas.fr
COMMENT=		    Driver and interface for MTI (temporary update for infuse)
AUTORECONF_SCRIPT=  ${WRKSRC}/autogen.sh
GNU_CONFIGURE=		yes
LICENSE=            2-clause-bsd

include ../../devel/mkdep/depend.mk
include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
