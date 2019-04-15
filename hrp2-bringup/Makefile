# robotpkg Makefile for:	robots/hrp2-bringup
# Created:			Olivier Stasse on Wed, 14 Jav 2015
#
VERSION=		1.0.6
DISTNAME=		hrp2-bringup-${VERSION}
CATEGORIES=		motion
MASTER_SITES=		${MASTER_SITE_JRL}ros/${PKGBASE}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}robots/ros-hrp2/${PKGBASE}

MAINTAINER=		gepetto@laas.fr
COMMENT=		Hrp2 ros package to start HRP-2
LICENSE=		openhrp-grx-license
WRKSRC=			${WRKDIR}/hrp2_bringup-${VERSION}

RESTRICTED=	Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=	${RESTRICTED}
NO_PUBLIC_BIN=	${RESTRICTED}

DYNAMIC_PLIST_DIRS+=	share/doc/hrp2_bringup

include ../../pkgtools/pkg-config/depend.mk
include ../../robots/hrp2-machine/depend.mk
include ../../sysutils/hrp2-computer-monitor/depend.mk
include ../../wip/hrp2-14-description/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
