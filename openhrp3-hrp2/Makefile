# robotpkg Makefile for:	robots/openhrp3-hrp2
# Created:			Olivier Stasse on 30, 30 Sep. 2016
#
VERSION=		1.0.7
PKGNAME=		openhrp3-hrp2-${VERSION}
DISTNAME=		openhrp3_hrp2-${VERSION}
PKGVERSION=		2

CATEGORIES=		robots
MASTER_SITES=		${MASTER_SITE_JRL}/openhrp3-hrp2/
MASTER_REPOSITORY=	git git://redmine.laas.fr/laas/users/ostasse/openhrp3-hrp2.git

MAINTAINER=		ostasse@laas.fr
COMMENT=		Hrp2-14 package for OpenHRP3 simulation
LICENSE=		openhrp-grx-license

RESTRICTED=		Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=		${RESTRICTED}
NO_PUBLIC_BIN=		${RESTRICTED}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

WRKSRC=			${WRKDIR}/openhrp3_hrp2-${VERSION}
DYNAMIC_PLIST_DIRS+=	share/doc/openhrp3_hrp2

include ../../wip/openhrp3-simulator-wo-rtm/depend.mk
include ../../wip/sot-hrp2-v3/depend.mk
include ../../wip/dynamic-graph-bridge-v3/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-xacro/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
