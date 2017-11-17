# robotpkg Makefile for:	wip/sot-dyninv-v3
# Created:			Rohan Budhiraja on Thu, 08 Sep 2016
#

VERSION=		3.0.0
PKGREVISION=		0
PKGNAME=		sot-dyninv-v3-${VERSION}
DISTNAME=		sot-dyninv-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-dyninv-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/sot-dyninv

MAINTAINER=	hpp@laas.fr
CATEGORIES=	wip
LICENSE=	gnu-lgpl-v3

CONFLICTS+=		sot-dyninv
DYNAMIC_PLIST_DIRS+=	share/doc/sot-dyninv
DEPEND_ABI.python+= python<3.0

include ../../wip/soth/depend.mk

include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
