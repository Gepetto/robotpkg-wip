# robotpkg Makefile for:	wip/jrl-walkgen-v3
# Created:			Anthony Mallet on Tue, 15 May 2007
#

ORG=			stack-of-tasks
NAME=			jrl-walkgen
VERSION=		4.2.0
PKGREVISION=		1

PKGNAME=		${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		Walk pattern generator for the HRP-2 humanoid robot.
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		${NAME}

include ../../wip/jrl-cmakemodules/Makefile.common
include ../../graphics/simple-humanoid-description/depend.mk
include ../../math/pinocchio/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../wip/eigen-quadprog/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/language/fortran.mk
include ../../mk/robotpkg.mk
