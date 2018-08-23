# robotpkg Makefile for:	wip/py-dynamic-graph-v3
# Created:			Rohan Budhiraja Tue Dec 15 14:59:13 CET 2015
#

ORG=			stack-of-tasks
NAME=			dynamic-graph-python
VERSION=		3.1.0

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}dynamic-graph-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Efficient data-flow C++ library for robotics (python bindings)
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		py[0-9][0-9]-${NAME}
CONFLICTS+=		py[0-9][0-9]-${NAME}-v3  # there is stuff not in ${PYTHON_SITELIB}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../wip/dynamic-graph-v3/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
