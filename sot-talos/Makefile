# robotpkg Makefile for:	wip/sot-talos
# Created:			Olivier Stasse, on Tue. 9th May, 2017
#

ORG=			stack-of-tasks
NAME=			sot-talos
VERSION=		1.0.2

PKGNAME=		${NAME}-${VERSION}
DISTNAME=		${NAME}-${VERSION}
DIST_SUBDIR=		${PKGBASE}

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/releases/download/v${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		This packages provides a generic Stack Of Tasks library for the humanoid robot Pyrene.
LICENSE=		2-clause-bsd
MAINTAINER=		ostasse@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../wip/talos-data/depend.mk
include ../../wip/py-sot-application-v3/depend.mk
include ../../wip/sot-dyninv-v3/depend.mk
include ../../motion/dynamic-graph-bridge-msgs/depend.mk
include ../../wip/py-dynamic-graph-bridge-v3/depend.mk
include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../wip/py-sot-dynamic-pinocchio-v3/depend.mk
include ../../wip/py-sot-tools-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
