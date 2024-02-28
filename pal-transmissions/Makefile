# robotpkg Makefile for:	wip/pal-transmissions
# Created:			Olivier Stasse on Tues, 18 April 2017
#
ORG=		pal-robotics
VERSION=	0.2.4
PKGBASE=	pal-transmissions
PKGNAME=	${PKGBASE}-${VERSION}
DISTNAME=	${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
DIST_SUBDIR=	${PKGBASE}
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}

CATEGORIES=	wip
# Source file store in robotpkg website
MASTER_REPOSITORY = 	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

COMMENT=	Hardware transmissions developped by PAL-Robotics
LICENSE=	2-clause-bsd


USE_BOOST_LIBS=	thread

# To make sure that the chaining uses the openrobots packages first.
CMAKE_PREFIX_PATH+= ${PREFIX}

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/py-prf-ros-control/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
