# robotpkg Makefile for:	math/proxsuite
# Created:			Guilhem Saurel on Mon, 26 Sep 2022
#

ORG=			Simple-Robotics
NAME=			proxsuite
VERSION=		0.1.1

DISTNAME=		${NAME}-${VERSION}
GITHUB_RELEASE=		v${VERSION}

MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=		math
COMMENT=		The Advanced Proximal Optimization Toolbox
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=		-DBUILD_WITH_VECTORIZATION_SUPPORT=OFF


# TODO: require meson build
#include ../../wip/simde/depend.mk

include ../../wip/matio/depend.mk
include ../../wip/matio-cpp/depend.mk

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
