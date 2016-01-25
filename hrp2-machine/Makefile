# robotpkg Makefile for:	robots/hrp2-machine
# Created:			Olivier Stasse on Wed, 17 Jun 2015
#
VERSION=		1.0.1
ROS_PKG=		hrp2-machine
ROS_VERSION=		${ROS_PKG}-${VERSION}
DISTNAME=		hrp2-machine
PKGNAME=		hrp2-machine
WRKSRC=			${WRKDIR}/hrp2_machine-${VERSION}
CATEGORIES=		robots
MASTER_SITES=		${MASTER_SITE_JRL}ros/${ROS_PKG}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}robots/ros-hrp2/hrp2-machine

MAINTAINER=		gepetto@laas.fr
COMMENT=		Hrp2 machine description
LICENSE=		openhrp-grx-license

RESTRICTED=	Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=	${RESTRICTED}
NO_PUBLIC_BIN=	${RESTRICTED}

DYNAMIC_PLIST_DIRS+=	share/doc/hrp2_machine


include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-catkin/depend.mk
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
