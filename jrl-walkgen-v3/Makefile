# robotpkg Makefile for:	wip/jrl-walkgen-v3
# Created:			Anthony Mallet on Tue, 15 May 2007
#

ORG=			stack-of-tasks
NAME=			jrl-walkgen
VERSION=		4.0.4

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${NAME}-v3-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Walk pattern generator for the HRP-2 humanoid robot.
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		${NAME}

CMAKE_ARGS+=	-DCMAKE_INSTALL_LIBDIR=lib

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

DEPEND_ABI.pinocchio=	pinocchio<2

include ../../graphics/simple-humanoid-description/depend.mk
include ../../interfaces/jrl-mal/depend.mk
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
