# robotpkg Makefile for:	wip/py36-libnabo
# Created:			Guilhem Saurel on Fri, 17 Jan 2020
#

ORG=			ethz-asl
NAME=			libnabo
VERSION=		1.0.7
PKGREVISION=		1

DISTNAME=		${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${NAME}-${VERSION}

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		wip
COMMENT=		A fast K Nearest Neighbor library for low-dimensional spaces

LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		python

PYTHON_MINOR=		$(word 2,$(subst ., ,${PYTHON_VERSION}))

Boost_PYTHON_LIBRARY=	$(filter %.so,${SYSTEM_FILES.boost-lib-python})
CMAKE_ARGS+=		-DSHARED_LIBS=true
CMAKE_ARGS+=		-DPYTHON_VERSION_MAJOR=${PYTHON_MAJOR}
CMAKE_ARGS+=		-DPYTHON_VERSION_MINOR=${PYTHON_MINOR}
CMAKE_ARGS+=		-DBoost_PYTHON_LIBRARY=${Boost_PYTHON_LIBRARY}
CMAKE_ARGS+=		-DBoost_PYTHON_LIBRARY_RELEASE=${Boost_PYTHON_LIBRARY}
CMAKE_ARGS+=		-DBoost_PYTHON_LIBRARY_DEBUG=${Boost_PYTHON_LIBRARY}

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
