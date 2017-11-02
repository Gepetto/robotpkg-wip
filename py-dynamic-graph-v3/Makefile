# robotpkg Makefile for:	motion/py-dynamic-graph
# Created:			Rohan Budhiraja Tue Dec 15 14:59:13 CET 2015
#

DISTNAME=		dynamic-graph-python-v3-${VERSION}
VERSION=		3.0.2

PKGNAME=		${PKGTAG.python-}dynamic-graph-v3-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=dynamic-graph-python-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/dynamic-graph-python
CHECKOUT_VCS_OPTS=	--recursive

MAINTAINER=	gepetto@laas.fr
CATEGORIES=	wip
LICENSE=	gnu-lgpl-v3
COMMENT=	Python bindings for wip/dynamic-graph-v3 package

CONFLICTS+=		py-dynamic-graph-v3-[0-9]*
CONFLICTS+=		py-dynamic-graph-[0-9]*
CONFLICTS+=		py[0-9][0-9]-dynamic-graph-[0-9]*
CONFLICTS+=		py[0-9][0-9]-dynamic-graph-v3-[0-9]*

DYNAMIC_PLIST_DIRS+=	share/doc/dynamic-graph-python

CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

# disable -Werror, some warnings from boost-filesystem (1.50, netbsd) cannot be
# fixed here
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

DEPEND_ABI.python+=	python<3

include ../../wip/dynamic-graph-v3/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
