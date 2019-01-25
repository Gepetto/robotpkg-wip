# robotpkg Makefile for:	wip/osg-dae
# Created:			Nicolas Mansard, 15/DEC/2016
#

ORG=			gepetto
NAME=			osg-dae
VERSION=		3.2.1
PKGREVISION=	2

DISTNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}/releases/download/v${VERSION}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		DAE module for OSG
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}
PLIST_SRC+=		${PKGDIR}/PLIST
PLIST_SRC+=		${PKGDIR}/PLIST.${OS_VERSION}

CMAKE_ARGS+=    -DINSTALL_DOCUMENTATION=OFF

USE_BOOST_LIBS=		system filesystem

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../graphics/collada-dom/depend.mk
include ../../mk/sysdep/openscenegraph.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
