# robotpkg Makefile for:	wip/pal-statistics
# Created:			Guilhem Saurel on Mon, 23 Mar 2020
#

ORG=			pal-robotics
VERSION=		1.3.1
NAME=			pal-statistics
PKGREVISION=		4

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

# old package name and other Python versions
CONFLICTS+=		${NAME}-[0-9]*
CONFLICTS+=		py[0-9][0-9]-${NAME}-[0-9]*

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

COMMENT=		Provides statistics
LICENSE=		gnu-gpl-v3

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
