# robotpkg Makefile for:	simulation/openhrp3-simulator-wo-rtm
# Created:			Olivier Stasse on Thursday, 25 Aug 2016
#

ORG=			stack-of-tasks
NAME=			openhrp3-simulator-wo-rtm
VERSION=		1.2.0

ROSNAME=		$(subst -,_,${NAME})
DISTNAME=		${ROSNAME}-${VERSION}
PKGNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		simulation
MAINTAINER=		ostasse@laas.fr
COMMENT=		OpenHRP-3 Simulator without RTM
LICENSE=		eclipse

USE_BOOST_LIBS=		thread

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../graphics/gepetto-viewer/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
