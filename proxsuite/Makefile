# robotpkg Makefile for:	math/proxsuite
# Created:			Guilhem Saurel on Mon, 26 Sep 2022
#

ORG=			Simple-Robotics
NAME=			proxsuite
VERSION=		0.2.0
PKGREVISION=		1

DISTNAME=		${NAME}-${VERSION}
GITHUB_RELEASE=		v${VERSION}

MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}

CATEGORIES=		math
COMMENT=		The Advanced Proximal Optimization Toolbox
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

DEPEND_ABI.cmake=	cmake>=3.10


include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/simde/depend.mk
include ../../wip/matio/depend.mk
include ../../wip/matio-cpp/depend.mk
include ../../wip/visit-struct/depend.mk
include ../../math/eigen3/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
