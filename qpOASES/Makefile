# robotpkg Makefile for:	wip/qpOASES
# Created:			Rohan Budhiraja on Wed Oct 19, 2016
#

VERSION=		3.2.0
PKGNAME=		qpOASES-${VERSION}
DISTNAME=		qpOASES-${VERSION}p2
PKGREVISION=	2

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_GITHUB:=humanoid-path-planner/qpOASES/releases/download/v${VERSION}/}

HOMEPAGE=		https://projects.coin-or.org/qpOASES

COMMENT=		An implementation of the online active set strategy
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto@laas.fr

# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}
# library location

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
