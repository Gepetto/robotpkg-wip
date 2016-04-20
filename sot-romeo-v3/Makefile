# robotpkg Makefile for:	wip/sot-romeo2
# Created:			Rohan Budhiraja on 15 Apr, 2016
#


VERSION=		2.0.0
DISTNAME=		sot-romeo-v3-${VERSION}
PKGNAME=		sot-romeo-v3-${VERSION}

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-romeo-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}proyan/sot-romeo

COMMENT=		This packages provides a generic Stack Of Tasks library for the humanoid robot Romeo.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/sot-romeo-v3


include ../../wip/dynamic-graph-bridge-v3/depend.mk
include ../../wip/dynamic-graph-bridge-msgs/depend.mk
include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../wip/py-sot-tools-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
