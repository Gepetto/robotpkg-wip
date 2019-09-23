# robotpkg Makefile for:	simulation/openhrp3-simulator-wo-rtm
# Created:			Olivier Stasse on Thursday, 25 Aug 2016
#

ORG=			stack-of-tasks
NAME=			openhrp3-simulator-wo-rtm
VERSION=		1.2.0

ROSNAME=		$(subst -,_,${NAME})
DISTNAME=		${ROSNAME}-${VERSION}
PKGNAME=		${NAME}-${VERSION}

CATEGORIES=		simulation
MAINTAINER=		ostasse@laas.fr
COMMENT=		OpenHRP-3 Simulator without RTM
LICENSE=		eclipse

USE_BOOST_LIBS=		thread

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../graphics/gepetto-viewer/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../middleware/omniORB/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
