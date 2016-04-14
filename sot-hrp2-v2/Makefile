# robotpkg Makefile for:	wip/sot-hrp2-v2
# Created:			Rohan Budhiraja, on Wed. 14th April 2016
#

VERSION=		2.0.0
DISTNAME=		sot-hrp2-${VERSION}
PKGNAME=		sot-hrp2-${VERSION}


CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-hrp2/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}proyan/sot-hrp2

COMMENT=		This packages provides a generic Stack Of Tasks library for the humanoid robot HRP-2.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/sot-hrp2


include ../../robots/hrp2-14/depend.mk

include ../../wip/dynamic-graph-bridge3/depend.mk
include ../../wip/dynamic-graph-bridge-msgs/depend.mk
include ../../wip/sot-dynamic-pinocchio/depend.mk
include ../../wip/py-sot-tools2/depend.mk
include ../../wip/sot-core3/depend.mk
include ../../wip/py-dynamic-graph3/depend.mk
include ../../wip/dynamic-graph3/depend.mk

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

