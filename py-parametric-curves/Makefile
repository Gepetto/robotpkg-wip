# robotpkg Makefile for:	wip/py-parametric-curves
# Created:			Guilhem Saurel, on Fri 25 May, 2018
#
NAME=			parametric-curves
VERSION=		1.0.3
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
DISTNAME=		${NAME}-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive
PKGREVISION=		1

CATEGORIES=		wip
COMMENT=		This packages provides a template based parametric curves library (python bindings)
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=			-DBUILD_PYTHON_INTERFACE=ON

include ../../wip/${NAME}/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
