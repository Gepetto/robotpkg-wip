# robotpkg Makefile for:	wip/sot-dyninv-v3
# Created:			Rohan Budhiraja on Thu, 08 Sep 2016
#

ORG=			stack-of-tasks
NAME=			sot-dyninv
VERSION=		3.1.2

PKGNAME=		${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		Resolve the inverse of the dynamics of a free-floating robot
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		${NAME}

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

include ../../wip/jrl-cmakemodules/Makefile.common
include ../../wip/soth/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
