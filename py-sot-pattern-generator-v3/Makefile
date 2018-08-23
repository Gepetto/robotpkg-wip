# robotpkg Makefile for:	wip/sot-pattern-generator-v3
# Created:			Olivier Stasse on Thu, 18 Apr 2013
#

ORG=			stack-of-tasks
NAME=			sot-pattern-generator
VERSION=		3.1.0

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Walking Pattern Generator (python bindings)
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto@laas.fr

CONFLICTS+=		py[0-9][0-9]-${NAME}

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../${CATEGORIES}/${NAME}-v3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/pinocchio/depend.mk
include ../../wip/jrl-walkgen-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
