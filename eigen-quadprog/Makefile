# robotpkg Makefile for:	wip/
# Created:			Rohan Budhiraja on Wed Oct 19, 2016
#

ORG=			jrl-umi3218
NAME=			eigen-quadprog
VERSION=		1.0.0

DISTNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
HOMEPAGE=			${MASTER_SITE_GITHUB}${ORG}/${NAME}

CATEGORIES=		wip
COMMENT=		eigen-quadprog allow to use the QuadProg QP solver with the Eigen3 library.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}


# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}
# library location

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/language/fortran.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
