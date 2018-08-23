# robotpkg Makefile for:	wip/parametric-curves
# Created:			Olivier Stasse, on Tue. 5th Jan, 2018
#

ORG=			stack-of-tasks
NAME=			parametric-curves
VERSION=		1.2.0

DISTNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		This packages provides a template based parametric curves library.
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
