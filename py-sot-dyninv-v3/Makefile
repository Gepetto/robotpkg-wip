# robotpkg Makefile for:	wip/py-sot-dyninv-v3
# Created:			Rohan Budhiraja on Thu, 08 Sep 2016
#

ORG=			stack-of-tasks
NAME=			sot-dyninv
VERSION=		3.1.1

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Resolve the inverse of the dynamics of a free-floating robot (python bindings)
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		py[0-9][0-9]-${NAME}

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../wip/soth/depend.mk

include ../../${CATEGORIES}/${NAME}-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
