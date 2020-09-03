# robotpkg Makefile for:	wip/py-dynamic-graph-v3
# Created:			Rohan Budhiraja Tue Dec 15 14:59:13 CET 2015
#

ORG=			stack-of-tasks
NAME=			dynamic-graph-python
VERSION=		4.0.0

PKGNAME=		${PKGTAG.python-}dynamic-graph-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		Efficient data-flow C++ library for robotics (python bindings)

CONFLICTS+=		py[0-9][0-9]-${NAME}
CONFLICTS+=		py[0-9][0-9]-${NAME}-v3  # there is stuff not in ${PYTHON_SITELIB}

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/dynamic-graph-v3/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
