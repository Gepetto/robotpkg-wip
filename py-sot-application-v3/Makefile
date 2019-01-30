# robotpkg Makefile for:	wip/py-sot-application-v3
# Created:			Rohan Budhiraja on Thu, 25 Aug 2016
#

ORG=			stack-of-tasks
NAME=			sot-application
VERSION=		1.2.0
PKGREVISION=		2

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Application dependent control graph initialization scripts for the Stack of Tasks
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto@laas.fr

CONFLICTS+=		py[0-9][0-9]-${NAME}

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../wip/py-sot-dynamic-pinocchio-v3/depend.mk
include ../../wip/sot-dyninv-v3/depend.mk
include ../../wip/sot-tools-v3/depend.mk
include ../../wip/py-sot-tools-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
