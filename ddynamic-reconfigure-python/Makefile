# robotpkg Makefile for:	wip/ddynamic-reconfigure-python
# Created:			Olivier Stasse on Tue, 9 May 2018
#

ORG=		pal-robotics
VERSION=	0.0.1
PKGBASE=	ddynamic-reconfigure-python
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
MASTER_REPOSITORY=	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
COMMENT=	The ddynamic_reconfigure_python package contains a class to instantiate dynamic reconfigure servers on the fly
LICENSE=	2-clause-bsd

USE_BOOST_LIBS=	thread

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
