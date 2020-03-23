# robotpkg Makefile for:	wip/pal-statistics
# Created:			Guilhem Saurel on Mon, 23 Mar 2020
#

ORG=			pal-robotics
VERSION=		1.3.1
PKGBASE=		pal-statistics
PKGNAME=		${PKGTAG.python-}${PKGBASE}-${VERSION}
DISTNAME=		${VERSION}
ROSNAME=		$(subst -,_,${PKGBASE})
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=		${PKGBASE}
PKGREVISION=		3

# old package name and other Python versions
CONFLICTS=		${PKGBBASE}-[0-9]*
CONFLICTS+=		py[0-9][0-9]-${PKGBBASE}-[0-9]*

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE= 		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/archive/
COMMENT=		Provides statistics
LICENSE=		gnu-gpl-v3

USE_BOOST_LIBS=		thread

ROS_METAPKG=		yes
USE_BOOST_LIBS=		thread

CMAKE_PREFIX_PATH+=${PREFIX}
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/googletest.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
