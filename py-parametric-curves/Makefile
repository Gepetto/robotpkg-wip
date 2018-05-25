# robotpkg Makefile for:	wip/py-parametric-curves
# Created:			Guilhem Saurel, on Fri 25 May, 2018
#
VERSION=		1.0.3
DISTNAME=		parametric-curves-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=parametric-curves/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/parametric-curves}
CHECKOUT_VCS_OPTS+=	--recursive
PKGREVISION=		1
PKGNAME=		${PKGTAG.python-}parametric-curves-${VERSION}

CATEGORIES=		wip
COMMENT=		This packages provides a template based parametric curves library (python bindings)
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=			-DBUILD_PYTHON_INTERFACE=ON

include ../../wip/parametric-curves/depend.mk
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
