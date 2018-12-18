# robotpkg Makefile for:	wip/sot-hrp2-v2
# Created:			Rohan Budhiraja, on Wed. 14th April 2016
#

ORG=			stack-of-tasks
NAME=			sot-hrp2
VERSION=		2.1.0

DISTNAME=		${NAME}-v3-${VERSION}

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

COMMENT=		This packages provides a generic Stack Of Tasks library for the humanoid robot HRP-2.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}


include ../../wip/py-dynamic-graph-bridge-v3/depend.mk
include ../../motion/dynamic-graph-bridge-msgs/depend.mk
include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../wip/py-sot-tools-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk

include ../../path/hpp-fcl/depend.mk
include ../../math/pinocchio/depend.mk

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
