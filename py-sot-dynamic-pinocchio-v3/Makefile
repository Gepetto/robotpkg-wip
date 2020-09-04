# robotpkg Makefile for:	wip/py-sot-dynamic-pinocchio-v3
# Created:			Rohan Budhiraja on Fri, 8 Apr 2016
#

ORG=			stack-of-tasks
NAME=			sot-dynamic-pinocchio
VERSION=		3.6.0

DISTNAME=		${NAME}-v3-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		Create entities to compute a robot dynamics properties using pinocchio (python bindings)

CONFLICTS+=		py[0-9][0-9]-${NAME}

USE_PYTHON_ONLY=	true

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../${CATEGORIES}/${NAME}-v3/depend.mk
include ../../devel/tinyxml/depend.mk
include ../../math/pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../mapping/octomap/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/py-sot-core-v3/depend.mk
include ../../wip/sot-tools-v3/depend.mk
include ../../wip/py-sot-tools-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
