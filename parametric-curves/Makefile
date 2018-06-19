# robotpkg Makefile for:	wip/parametric-curves
# Created:			Olivier Stasse, on Tue. 5th Jan, 2018
#
NAME=			parametric-curves
VERSION=		1.1.1
DISTNAME=		${NAME}-${VERSION}
MASTER_SITES=		${MASTER_SITE_GITHUB:=stack-of-tasks/${NAME}/releases/download/v${VERSION}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		This packages provides a template based parametric curves library.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		ostasse@laas.fr

CMAKE_ARGS+=			-DBUILD_PYTHON_INTERFACE=OFF
DYNAMIC_PLIST_DIRS+=	share/doc/parametric-curves

include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
