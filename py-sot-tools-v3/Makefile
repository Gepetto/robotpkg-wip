# robotpkg Makefile for:	wip/py-sot-tools-v3
# Created:			Olivier Stasse on Mon, 15 Apr 2013
#

ORG=			stack-of-tasks
NAME=			sot-tools
VERSION=		2.3.0

PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		tools for the sot-core package (python bindings)

CONFLICTS+=		py[0-9][0-9]-${NAME}

USE_PYTHON_ONLY=	true

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../${CATEGORIES}/${NAME}-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../mapping/octomap/depend.mk
include ../../path/py-hpp-fcl/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
