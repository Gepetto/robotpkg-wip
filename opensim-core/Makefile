# robotpkg Makefile for:	math/matio
# Created:			Guilhem Saurel on Mon, 29 Aug 2022
#

ORG=			opensim-org
NAME=			opensim-core
VERSION=		4.4

DISTNAME=		${NAME}-${VERSION}
#GITHUB_RELEASE=		${VERSION}
PKGNAME=		${PKGTAG.python-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=		-DSIMBODY_HOME=${PREFIX.simbody}
CMAKE_ARGS+=		-DOPENSIM_WITH_TROPTER=OFF
CMAKE_ARGS+=		-DOPENSIM_COPY_DEPENDENCIES=OFF
DEPEND_ABI.cmake+=	cmake>=3.15

CATEGORIES=		simulation
COMMENT=		develop models of musculoskeletal structures and create dynamic simulations of movement
LICENSE=		apache-2.0
MAINTAINER=		gsaurel@laas.fr

include ../../wip/docopt-cpp/depend.mk
include ../../wip/simbody/depend.mk
include ../../optimization/py-casadi/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
