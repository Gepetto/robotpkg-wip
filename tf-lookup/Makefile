# robotpkg Makefile for:	wip/tf-lookup
# Created:			Olivier Stasse on Tue, 9 May 2018
#

VERSION=	0.0.1
PKGBASE=	tf-lookup
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}
PKGVERSION=	5

CATEGORIES=	wip
HOMEPAGE=	${MASTER_SITE_GITHUB:=olivier-stasse/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Centralizes tf lookups for nodes that do not rely heavily  on tf and thus do not need a dedicated tfListener
LICENSE=	2-clause-bsd


USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
