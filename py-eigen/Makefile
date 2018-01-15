# robotpkg Makefile for:	wip/py-eigen
# Created:			Olivier Stasse, Feb 3rd 2016
#

VERSION=		1.4.0
DISTNAME=		eigenpy-${VERSION}
DISTFILES=  eigenpy-${VERSION}b.tar.gz
PKGREVISION= 1

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${PKGBASE}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/eigenpy
CHECKOUT_VCS_OPTS+=	--recursive

MAINTAINER=	hpp@laas.fr
CATEGORIES=	wip
COMMENT=	eigen binding to python
LICENSE=	gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/eigenpy

CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
CMAKE_ARGS+=    -DCMAKE_INSTALL_LIBDIR=lib
CMAKE_ARGS+=    -DINSTALL_DOCUMENTATION=OFF

USE_BOOST_LIBS=		python

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

DEPEND_ABI.python+=	python<3

include ../../mk/robotpkg.mk
