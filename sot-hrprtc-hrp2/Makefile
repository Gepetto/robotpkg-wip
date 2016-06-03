# robotpkg Makefile for:	wip/sot-hrprtc-hrp2
# Created:			Olivier Stasse, on Wed. 28th January, 2016
#
VERSION=		1.2.2
LOCALPKGNAME=		sot-hrprtc-hrp2
DISTNAME=		${LOCALPKGNAME}-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-hrprtc-hrp2/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/sot-hrprtc-hrp2

CATEGORIES=		wip
COMMENT=		This packages embeds the HRP-2 stack of tasks inside a RTC component
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

INSTALL_VARS+= 		MKDIR PKG_DBDIR TEST LOCALPKGNAME

DYNAMIC_PLIST_DIRS+=	share/doc/sot-hrprtc-hrp2

CMAKE_ARGS+=		-DROBOTPKG=ON

include ../../wip/sot-hrp2/depend.mk
include ../../robots/hrp2-14/depend.mk
include ../../wip/hrp2-bringup/depend.mk
include ../../wip/hrp2-machine/depend.mk
include ../../wip/hrp2-computer-monitor/depend.mk
include ../../wip/hrp2-14-description/depend.mk
include ../../middleware/openrtm-aist/depend.mk
include ../../motion/sot-pattern-generator/depend.mk
include ../../wip/sot-application/depend.mk
include ../../wip/sot-dyninv/depend.mk
include ../../motion/dynamic-graph-bridge-msgs/depend.mk
include ../../motion/dynamic-graph-bridge/depend.mk
include ../../robots/hrp2-14/depend.mk
include ../../math/hrp2-dynamics/depend.mk
include ../../motion/sot-dynamic/depend.mk
include ../../motion/py-sot-tools/depend.mk
include ../../motion/sot-core/depend.mk
include ../../motion/py-dynamic-graph/depend.mk
include ../../motion/dynamic-graph/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

