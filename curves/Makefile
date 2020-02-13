# robotpkg Makefile for:	wip/curves
# Created:			Guilhem Saurel on Wed, 15 Jan 2020
#

ORG=			loco-3d
NAME=			curves
VERSION=		0.3.2

CATEGORIES=		wip
COMMENT=		Library for creating curves

LICENSE=		2-clause-bsd
MAINTAINER=		gepetto@laas.fr

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
