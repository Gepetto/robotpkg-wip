# robotpkg Makefile for:	wip/osg-dae
# Created:			Nicolas Mansard, 15/DEC/2016
#

VERSION=		3.2.0
DISTNAME=		osg-dae-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${PKGBASE}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/${PKGBASE}

MAINTAINER=		gepetto@laas.fr
CATEGORIES=		graphics
COMMENT=		DAE module for OSG
LICENSE=		gnu-lgpl-v3

# parallel builds would consume all memory because of the g++ process size
MAKE_JOBS_SAFE=		no

#DYNAMIC_PLIST_DIRS+=	

CMAKE_ARGS+=    -DINSTALL_DOCUMENTATION=OFF

USE_BOOST_LIBS=		system filesystem

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/colladadom.mk
include ../../mk/sysdep/openscene.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
