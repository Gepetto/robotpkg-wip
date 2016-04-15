# robotpkg Makefile for:	wip/sot-romeo2
# Created:			Rohan Budhiraja on 15 Apr, 2016
#


VERSION=		2.0.0
DISTNAME=		sot-romeo-${VERSION}
PKGNAME=		sot-romeo-${VERSION}

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-romeo/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}proyan/sot-romeo

COMMENT=		This packages provides a generic Stack Of Tasks library for the humanoid robot Romeo.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/sot-romeo


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
