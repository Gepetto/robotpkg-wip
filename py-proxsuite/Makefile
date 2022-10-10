# robotpkg Makefile for:	math/py38-proxsuite
# Created:			Guilhem Saurel on Mon, 29 Aug 2022
#

ORG=			Simple-Robotics
NAME=			proxsuite
VERSION=		0.2.0

DISTNAME=		${NAME}-${VERSION}
GITHUB_RELEASE=		v${VERSION}

MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=		math
COMMENT=		The Advanced Proximal Optimization Toolbox
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

USE_PYTHON_ONLY=	true

CMAKE_ARGS+=		-DBUILD_WITH_VECTORIZATION_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_TESTING=OFF

DEPEND_ABI.cmake=	cmake>=3.10
DEPEND_ABI.python=	python>=3.6


include ../../wip/proxsuite/depend.mk

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/simde/depend.mk
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
