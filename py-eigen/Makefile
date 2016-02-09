# robotpkg Makefile for:	wip/py-eigen
# Created:			Olivier Stasse, Feb 3rd 2016
#

VERSION=		1.3.0
DISTNAME=		eigenpy-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=eigenpy/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/eigenpy

MAINTAINER=	hpp@laas.fr
CATEGORIES=	wip
COMMENT=	eigen binding to python
LICENSE=	gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/eigenpy

CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}

USE_BOOST_LIBS:= python

DEPEND_ABI.python+=	python<3

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../math/eigen3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
