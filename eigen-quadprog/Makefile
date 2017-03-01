# robotpkg Makefile for:	wip/
# Created:			Rohan Budhiraja on Wed Oct 19, 2016
#

VERSION=		1.0.0
DISTNAME=		eigen-quadprog-${VERSION}
PKGNAME=		eigen-quadprog-${VERSION}

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=eigen-quadprog/}

HOMEPAGE=		https://github.com/jrl-umi3218/eigen-quadprog

COMMENT=		eigen-quadprog allow to use the QuadProg QP solver with the Eigen3 library.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto@laas.fr

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
