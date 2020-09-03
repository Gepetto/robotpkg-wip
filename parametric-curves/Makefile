# robotpkg Makefile for:	wip/parametric-curves
# Created:			Olivier Stasse, on Tue. 5th Jan, 2018
#

ORG=			stack-of-tasks
NAME=			parametric-curves
VERSION=		1.4.0

CATEGORIES=		wip
COMMENT=		This packages provides a template based parametric curves library.
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

DEPEND_ABI.eigen3 += eigen3>=3.2.92

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
