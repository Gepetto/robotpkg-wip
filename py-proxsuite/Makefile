# robotpkg Makefile for:	math/py38-proxsuite
# Created:			Guilhem Saurel on Mon, 29 Aug 2022
#

ORG=		Simple-Robotics
NAME=		proxsuite
VERSION=	0.1.0

DISTNAME=	${NAME}-${VERSION}
GITHUB_RELEASE=	v${VERSION}

MASTER_SITES=	${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=	math
COMMENT=	The Advanced Proximal Optimization Toolbox
LICENSE=	modified-bsd
MAINTAINER=	gsaurel@laas.fr

USE_PYTHON=	true

CMAKE_ARGS+=	-DBUILD_WITH_VECTORIZATION_SUPPORT=OFF

# TODO: require meson build
#include ../../wip/simde/depend.mk

include ../../wip/matio/depend.mk
include ../../wip/matio-cpp/depend.mk

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
