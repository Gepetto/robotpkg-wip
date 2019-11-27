# robotpkg Makefile for:	wip/example-robot-data
# Created:			Guilhem Saurel on Wed, 20 Feb 2019
#

ORG=			gepetto
NAME=			example-robot-data
VERSION=		3.1.1

CATEGORIES=		wip
COMMENT=		Set of robot URDFs for benchmarking and developed examples.
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto@laas.fr

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

DEPEND_ABI.cmake+=	cmake>=3.0.0

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
